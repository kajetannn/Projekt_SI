;;; ***************************
;;; * DEFTEMPLATES & DEFFACTS *
;;; ***************************

(deftemplate UI-state
   (slot id (default-dynamic (gensym*)))
   (slot display)
   (slot relation-asserted (default none))
   (slot response (default none))
   (multislot valid-answers)
   (slot state (default middle)))
   
(deftemplate state-list
   (slot current)
   (multislot sequence))
  
(deffacts startup
   (state-list))
   
;;;****************
;;;* STARTUP RULE *
;;;****************

(defrule system-banner ""

  =>
  
  (assert (UI-state (display WelcomeMessage)
                    (relation-asserted start)
                    (state initial)
                    (valid-answers))))

;;;***************
;;;* QUERY RULES *
;;;***************

(defrule determine-action ""

	(logical (start))
	
	=>
	
	(assert (UI-state (display StartQuestion)
					  (relation-asserted action-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-terminator ""

	(logical (action-movie Yes))
	
	=>
	
	(assert (UI-state (display TerminatorQuestion)
					  (relation-asserted terminator-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-war ""
	
	(logical (terminator-movie No))
	
	=>
	
	(assert (UI-state (display WarQuestion)
					  (relation-asserted war-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-horses ""
	
	(logical (war-movie No))
	
	=>
	
	(assert (UI-state (display HorsesQuestion)
					  (relation-asserted horses-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-serious ""
	
	(logical (horses-movie No))
	
	=>
	
	(assert (UI-state (display SeriousQuestion)
					  (relation-asserted serious-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-future ""
	
	(logical (serious-movie Yes))
	
	=>
	
	(assert (UI-state (display FutureQuestion)
					  (relation-asserted future-movie)
					  (response Now)
					  (valid-answers Now Future))))
					  
(defrule determine-oldschool ""
	
	(logical (horses-movie Yes))
	
	=>
	
	(assert (UI-state (display OldschoolQuestion)
					  (relation-asserted oldschool-movie)
					  (response Fresh)
					  (valid-answers Fresh Old))))
					  
(defrule determine-documentary ""

	(logical (action-movie No))
	
	=>
	
	(assert (UI-state (display DocumentaryQuestion)
					  (relation-asserted documentary-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-snowboard ""

	(logical (documentary-movie Yes))
	
	=>
	
	(assert (UI-state (display SnowboardQuestion)
					  (relation-asserted snowboard-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-melt ""

	(logical (snowboard-movie No))
	
	=>
	
	(assert (UI-state (display MeltQuestion)
					  (relation-asserted melt-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-streets ""

	(logical (melt-movie No))
	
	=>
	
	(assert (UI-state (display StreetsQuestion)
					  (relation-asserted streets-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-pain ""

	(logical (streets-movie Yes))
	
	=>
	
	(assert (UI-state (display PainQuestion)
					  (relation-asserted pain-movie)
					  (response Paint)
					  (valid-answers Paint Pain))))
					  
(defrule determine-religulous ""

	(logical (streets-movie No))
	
	=>
	
	(assert (UI-state (display ReligulousQuestion)
					  (relation-asserted religulous-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-woody ""

	(logical (religulous-movie No))
	
	=>
	
	(assert (UI-state (display WoodyQuestion)
					  (relation-asserted woody-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-subtitles ""

	(logical (woody-movie No))
	
	=>
	
	(assert (UI-state (display SubtitlesQuestion)
					  (relation-asserted subtitles-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-monsters ""

	(logical (documentary-movie No))
	
	=>
	
	(assert (UI-state (display MonstersQuestion)
					  (relation-asserted monsters-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-blood ""

	(logical (monsters-movie Yes))
	
	=>
	
	(assert (UI-state (display BloodQuestion)
					  (relation-asserted blood-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-horror ""

	(logical (blood-movie No))
	
	=>
	
	(assert (UI-state (display HorrorQuestion)
					  (relation-asserted horror-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-asylium ""

	(logical (horror-movie No))
	
	=>
	
	(assert (UI-state (display AsyliumQuestion)
					  (relation-asserted asylium-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-laugh ""

	(logical (monsters-movie No))
	
	=>
	
	(assert (UI-state (display LaughQuestion)
					  (relation-asserted laugh-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-drama ""

	(logical (laugh-movie Yes))
	
	=>
	
	(assert (UI-state (display DramaQuestion)
					  (relation-asserted drama-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-singing ""

	(logical (drama-movie No))
	
	=>
	
	(assert (UI-state (display SingingQuestion)
					  (relation-asserted singing-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-wordplay ""

	(logical (singing-movie No))
	
	=>
	
	(assert (UI-state (display WordplayQuestion)
					  (relation-asserted wordplay-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-black ""

	(logical (drama-movie Yes))
	
	=>
	
	(assert (UI-state (display BlackQuestion)
					  (relation-asserted black-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-newman ""

	(logical (black-movie Yes))
	
	=>
	
	(assert (UI-state (display NewmanQuestion)
					  (relation-asserted newman-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-great ""

	(logical (newman-movie Yes))
	
	=>
	
	(assert (UI-state (display GreatQuestion)
					  (relation-asserted great-movie)
					  (response Legend)
					  (valid-answers Legend Great))))
					  
(defrule determine-gritty ""

	(logical (newman-movie No))
	
	=>
	
	(assert (UI-state (display GrittyQuestion)
					  (relation-asserted gritty-movie)
					  (response Gritty)
					  (valid-answers Gritty Pretty))))
					  
(defrule determine-paced ""

	(logical (gritty-movie Pretty))
	
	=>
	
	(assert (UI-state (display pacedQuestion)
					  (relation-asserted paced-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-humor ""

	(logical (black-movie No))
	
	=>
	
	(assert (UI-state (display HumorQuestion)
					  (relation-asserted humor-movie)
					  (response Less)
					  (valid-answers More Less))))
					  
(defrule determine-adventure ""

	(logical (laugh-movie No))
	
	=>
	
	(assert (UI-state (display AdventureQuestion)
					  (relation-asserted adventure-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-firefly ""

	(logical (adventure-movie Yes))
	
	=>
	
	(assert (UI-state (display FireflyQuestion)
					  (relation-asserted firefly-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-kids ""

	(logical (firefly-movie No))
	
	=>
	
	(assert (UI-state (display KidsQuestion)
					  (relation-asserted kids-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-thrills ""

	(logical (kids-movie Yes))
	
	=>
	
	(assert (UI-state (display ThrillsQuestion)
					  (relation-asserted thrills-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-intent ""

	(logical (adventure-movie No))
	
	=>
	
	(assert (UI-state (display IntentQuestion)
					  (relation-asserted intent-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-diatribes ""

	(logical (intent-movie Yes))
	
	=>
	
	(assert (UI-state (display DiatribesQuestion)
					  (relation-asserted diatribes-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-drug ""

	(logical (diatribes-movie No))
	
	=>
	
	(assert (UI-state (display DrugQuestion)
					  (relation-asserted drug-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-hip ""

	(logical (drug-movie No))
	
	=>
	
	(assert (UI-state (display HipQuestion)
					  (relation-asserted hip-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-mob ""

	(logical (drug-movie Yes))
	
	=>
	
	(assert (UI-state (display MobQuestion)
					  (relation-asserted mob-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-romance ""

	(logical (intent-movie No))
	
	=>
	
	(assert (UI-state (display RomanceQuestion)
					  (relation-asserted romance-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-rape ""

	(logical (romance-movie No))
	
	=>
	
	(assert (UI-state (display RapeQuestion)
					  (relation-asserted rape-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-dragon ""

	(logical (rape-movie No))
	
	=>
	
	(assert (UI-state (display DragonQuestion)
					  (relation-asserted dragon-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-girl ""

	(logical (dragon-movie Yes))
	
	=>
	
	(assert (UI-state (display GirlQuestion)
					  (relation-asserted girl-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-confused ""

	(logical (rape-movie Yes))
	
	=>
	
	(assert (UI-state (display ConfusedQuestion)
					  (relation-asserted confused-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-problem ""

	(logical (confused-movie No))
	
	=>
	
	(assert (UI-state (display ProblemQuestion)
					  (relation-asserted problem-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-mellow ""

	(logical (problem-movie Yes))
	
	=>
	
	(assert (UI-state (display MellowQuestion)
					  (relation-asserted mellow-movie)
					  (response No)
					  (valid-answers No Yes))))
					  
(defrule determine-tom ""

	(logical (romance-movie Yes))
	
	=>
	
	(assert (UI-state (display TomQuestion)
					  (relation-asserted tom-movie)
					  (response No)
					  (valid-answers Matt Tom))))
					  
;;;****************
;;;* SELECT RULES *
;;;****************
(defrule terminator-conclusions ""

   (logical (terminator-movie Yes))
   
   =>

   (assert (UI-state (display TerminatorMovie)
                     (state final))))		
                     
(defrule war-conclusions ""

   (logical (war-movie Yes))
   
   =>

   (assert (UI-state (display HawkMovie)
                     (state final))))
                     
(defrule oldschool-conclusions1 ""

   (logical (oldschool-movie Old))
   
   =>

   (assert (UI-state (display WestMovie)
                     (state final))))	
                     
(defrule oldschool-conclusions ""

   (logical (oldschool-movie Fresh))
   
   =>

   (assert (UI-state (display TrueMovie)
                     (state final))))                                          
                     
(defrule serious-conclusions ""

   (logical (serious-movie No))
   
   =>

   (assert (UI-state (display TopMovie)
                     (state final))))	
                     
(defrule future-conclusions ""

   (logical (future-movie Now))
   
   =>

   (assert (UI-state (display ShooterMovie)
                     (state final))))	
                     
(defrule future-conclusions1 ""

   (logical (future-movie Future))
   
   =>

   (assert (UI-state (display AeonMovie)
                     (state final))))
                     
(defrule snowboard-conclusions ""

   (logical (snowboard-movie Yes))
   
   =>

   (assert (UI-state (display ArtMovie)
                     (state final))))	
                     
(defrule horse-conclusions ""

   (logical (melt-movie Yes))
   
   =>

   (assert (UI-state (display HorseMovie)
                     (state final)))) 
                     
(defrule pain-conclusions ""

   (logical (pain-movie Paint))
   
   =>

   (assert (UI-state (display ExitMovie)
                     (state final))))
                     
(defrule pain-conclusions1 ""

   (logical (pain-movie Pain))
   
   =>

   (assert (UI-state (display BonesMovie)
                     (state final))))
                     
(defrule religulous-conclusions ""

   (logical (religulous-movie Yes))
   
   =>

   (assert (UI-state (display ReligulousMovie)
                     (state final)))) 
                     
(defrule woody-conclusions ""

   (logical (woody-movie Yes))
   
   =>

   (assert (UI-state (display WoodyMovie)
                     (state final)))) 
                     
        
                     
(defrule subtitles-conclusions ""

   (logical (subtitles-movie Yes))
   
   =>

   (assert (UI-state (display GrizzlyMovie)
                     (state final))))    
                     
(defrule subtitles-conclusions1 ""

   (logical (subtitles-movie No))
   
   =>

   (assert (UI-state (display ManMovie)
                     (state final))))
                     
(defrule blood-conclusions ""

   (logical (blood-movie Yes))
   
   =>

   (assert (UI-state (display EvilMovie)
                     (state final)))) 
                     
(defrule horror-conclusions ""

   (logical (horror-movie Yes))
   
   =>

   (assert (UI-state (display CabinMovie)
                     (state final)))) 
                     
(defrule asylium-conclusions ""

   (logical (asylium-movie Yes))
   
   =>

   (assert (UI-state (display SessionMovie)
                     (state final))))   
                     
(defrule asylium-conclusions1 ""

   (logical (asylium-movie No))
   
   =>

   (assert (UI-state (display InsidiousMovie)
                     (state final))))  
                     
(defrule singing-conclusions ""

   (logical (singing-movie Yes))
   
   =>

   (assert (UI-state (display HappyMovie)
                     (state final))))  
                     
(defrule wordplay-conclusions ""

   (logical (wordplay-movie Yes))
   
   =>

   (assert (UI-state (display DuckMovie)
                     (state final)))) 
                     
(defrule wordplay-conclusions1 ""

   (logical (wordplay-movie No))
   
   =>

   (assert (UI-state (display FerrisMovie)
                     (state final)))) 
                     
(defrule humor-conclusions ""

   (logical (humor-movie Less))
   
   =>

   (assert (UI-state (display ManhattanMovie)
                     (state final)))) 
                     
(defrule humor-conclusions1 ""

   (logical (humor-movie More))
   
   =>

   (assert (UI-state (display ClerksMovie)
                     (state final)))) 
                     
(defrule great-conclusions ""

   (logical (great-movie Legend))
   
   =>

   (assert (UI-state (display ButchMovie)
                     (state final)))) 
                     
(defrule great-conclusions1 ""

   (logical (great-movie Great))
   
   =>

   (assert (UI-state (display SlapMovie)
                     (state final)))) 
                     
(defrule gritty-conclusions ""

   (logical (gritty-movie Gritty))
   
   =>

   (assert (UI-state (display TrainMovie)
                     (state final)))) 
                     
(defrule paced-conclusions ""

   (logical (paced-movie Yes))
   
   =>

   (assert (UI-state (display LostMovie)
                     (state final)))) 
                     
(defrule paced-conclusions1 ""

   (logical (paced-movie No))
   
   =>

   (assert (UI-state (display BigMovie)
                     (state final)))) 
                     
(defrule firefly-conclusions ""

   (logical (firefly-movie Yes))
   
   =>

   (assert (UI-state (display SerenityMovie)
                     (state final)))) 
                     
(defrule kids-conclusions ""

   (logical (kids-movie No))
   
   =>

   (assert (UI-state (display StarMovie)
                     (state final)))) 
                     
(defrule thrills-conclusions ""

   (logical (thrills-movie Yes))
   
   =>

   (assert (UI-state (display SuperMovie)
                     (state final)))) 
                     
(defrule thrills-conclusions1 ""

   (logical (thrills-movie No))
   
   =>

   (assert (UI-state (display HungerMovie)
                     (state final)))) 
                     
(defrule diatribes-conclusions ""

   (logical (diatribes-movie Yes))
   
   =>

   (assert (UI-state (display ReservoirMovie)
                     (state final)))) 
                     
(defrule mob-conclusions ""

   (logical (mob-movie Yes))
   
   =>

   (assert (UI-state (display CrossingMovie)
                     (state final))))    
                     
(defrule mob-conclusions1 ""

   (logical (mob-movie No))
   
   =>

   (assert (UI-state (display ClayMovie)
                     (state final))))    
                     
(defrule hip-conclusions ""

   (logical (hip-movie No))
   
   =>

   (assert (UI-state (display TrafficMovie)
                     (state final))))    
                     
(defrule hip-conclusions1 ""

   (logical (hip-movie Yes))
   
   =>

   (assert (UI-state (display HustleMovie)
                     (state final)))) 
                     
(defrule dragon-conclusions ""

   (logical (dragon-movie No))
   
   =>

   (assert (UI-state (display DragonMovie)
                     (state final))))  
                     
(defrule girl-conclusions ""

   (logical (girl-movie No))
   
   =>

   (assert (UI-state (display FireMovie)
                     (state final))))     
                     
(defrule girl-conclusions1 ""

   (logical (girl-movie Yes))
   
   =>

   (assert (UI-state (display HornetsMovie)
                     (state final))))   
                     
(defrule confused-conclusions ""

   (logical (confused-movie Yes))
   
   =>

   (assert (UI-state (display PiMovie)
                     (state final))))   
                     
(defrule problem-conclusions ""

   (logical (problem-movie No))
   
   =>

   (assert (UI-state (display TomboyMovie)
                     (state final))))    
                     
(defrule mellow-conclusions ""

   (logical (mellow-movie No))
   
   =>

   (assert (UI-state (display MachinistMovie)
                     (state final))))  
                     
(defrule mellow-conclusions1 ""

   (logical (mellow-movie Yes))
   
   =>

   (assert (UI-state (display CowboyMovie)
                     (state final))))  
                     
(defrule tom-conclusions ""

   (logical (tom-movie Tom))
   
   =>

   (assert (UI-state (display VanillaMovie)
                     (state final))))  
                     
(defrule tom-conclusions1 ""

   (logical (tom-movie Matt))
   
   =>

   (assert (UI-state (display HuntingMovie)
                     (state final))))         
                     
;;;*************************
;;;* GUI INTERACTION RULES *
;;;*************************

(defrule ask-question

   (declare (salience 5))
   
   (UI-state (id ?id))
   
   ?f <- (state-list (sequence $?s&:(not (member$ ?id ?s))))
             
   =>
   
   (modify ?f (current ?id)
              (sequence ?id ?s))
   
   (halt))

(defrule handle-next-no-change-none-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
                      
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-response-none-end-of-chain

   (declare (salience 10))
   
   ?f <- (next ?id)

   (state-list (sequence ?id $?))
   
   (UI-state (id ?id)
             (relation-asserted ?relation))
                   
   =>
      
   (retract ?f)

   (assert (add-response ?id)))   

(defrule handle-next-no-change-middle-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)

   ?f2 <- (state-list (current ?id) (sequence $? ?nid ?id $?))
     
   (UI-state (id ?id) (response ?response))
   
   =>
      
   (retract ?f1)
   
   (modify ?f2 (current ?nid))
   
   (halt))

(defrule handle-next-change-middle-of-chain

   (declare (salience 10))
   
   (next ?id ?response)

   ?f1 <- (state-list (current ?id) (sequence ?nid $?b ?id $?e))
     
   (UI-state (id ?id) (response ~?response))
   
   ?f2 <- (UI-state (id ?nid))
   
   =>
         
   (modify ?f1 (sequence ?b ?id ?e))
   
   (retract ?f2))
   
(defrule handle-next-response-end-of-chain

   (declare (salience 10))
   
   ?f1 <- (next ?id ?response)
   
   (state-list (sequence ?id $?))
   
   ?f2 <- (UI-state (id ?id)
                    (response ?expected)
                    (relation-asserted ?relation))
                
   =>
      
   (retract ?f1)

   (if (neq ?response ?expected)
      then
      (modify ?f2 (response ?response)))
      
   (assert (add-response ?id ?response)))   

(defrule handle-add-response

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id ?response)
                
   =>
      
   (str-assert (str-cat "(" ?relation " " ?response ")"))
   
   (retract ?f1))   

(defrule handle-add-response-none

   (declare (salience 10))
   
   (logical (UI-state (id ?id)
                      (relation-asserted ?relation)))
   
   ?f1 <- (add-response ?id)
                
   =>
      
   (str-assert (str-cat "(" ?relation ")"))
   
   (retract ?f1))   

(defrule handle-prev

   (declare (salience 10))
      
   ?f1 <- (prev ?id)
   
   ?f2 <- (state-list (sequence $?b ?id ?p $?e))
                
   =>
   
   (retract ?f1)
   
   (modify ?f2 (current ?p))
   
   (halt))            