(defrule p1
	(or ?p <- (start))
	=>
	(printout t crlf crlf "		Welcome! Cake Expert System" crlf)
	(printout t "		**************************" crlf)
	(printout t crlf crlf "What is the type of Cake? " crlf "1. Sponge Cake" 
	crlf "2. Butter Cake" 
	crlf "3. Chocolate Cake" 
	crlf "4. Carrot Cake" 
	crlf crlf "Enter Your Answer (1|2|3|4): ")
	(assert (cType (read)))
	(retract ?p)
)

//--------------------Ask Cake Technique-----------------------
(defrule read-technique
	(or(cType 1) (cType 2) (cType 3) (cType 4))
	=>
	(printout t crlf crlf "What is the Cake baking techniques ?" crlf "1. Creaming Method" 
	crlf "2. Creaming and Whisking Method" 
	crlf "3. One-bowl Method" 
	crlf "4. Reverse Creaming Method" 
	crlf crlf "Enter Your Answer (1|2|3|4): ")
	(assert (cTechnique (read))))	

//--------------------Ask Problem-----------------------
(defrule read-problem
	(or(cTechnique 1) (cTechnique 2) (cTechnique 3) (cTechnique 4))
	=>
	(printout t crlf crlf "What is the Cake baking problem ?" crlf "1. cake is dry" 
	crlf "2. cake is tough" 
	crlf "3. cake is dense" 
	crlf "4. cake collapses" 
	crlf "5. cake sticks to the pan" 
	crlf crlf "Enter Your Answer (1|2|3|4|5): ")
	(assert (problem (read))))

//--------------------Problem solving-----------------------
//--------------------Rule 1 spong cake technique 2----------------------
(defrule spCake1 (cType 1)(cTechnique 2) =>
(printout t crlf crlf "	Use Creaming Method" crlf crlf)
)
//--------------------Rule 2 spong cake technique 3----------------------
(defrule spCake2 (cType 1)(cTechnique 3) =>
(printout t crlf crlf "	Use Creaming Method" crlf crlf)
)
//--------------------Rule 3 spong cake technique 4----------------------
(defrule spCake3 (cType 1)(cTechnique 4) =>
(printout t crlf crlf "	Use Creaming Method" crlf crlf)
)
//--------------------Rule 4 butter cake technique 1---------------------
(defrule buCake1 (cType 2)(cTechnique 1) =>
(printout t crlf crlf "	Use Creaming and Whisking Method" crlf crlf)
)
//--------------------Rule 5 butter cake technique 3---------------------
(defrule buCake2 (cType 2)(cTechnique 3) =>
(printout t crlf crlf "	Use Creaming and Whisking Method" crlf crlf)
)
//--------------------Rule 6 butter cake technique 4----------------------
(defrule buCake3 (cType 2)(cTechnique 4) =>
(printout t crlf crlf "	Use Creaming and Whisking Method" crlf crlf)
)
//--------------------Rule 7 chocolate cake technique 1----------------------
(defrule chCake1 (cType 3)(cTechnique 1) =>
(printout t crlf crlf "	Use One-bowl Method or Reverse Creaming Method " crlf crlf)
)
//--------------------Rule 8 chocolate cake technique 2----------------------
(defrule chCake2 (cType 3)(cTechnique 2) =>
(printout t crlf crlf "	Use One-bowl Method or Reverse Creaming Method " crlf crlf)
)
//--------------------Rule 9 carrot cake technique 1----------------------
(defrule caCake1 (cType 4)(cTechnique 1) =>
(printout t crlf crlf "	Use Reverse Creaming Method" crlf crlf)
)
//--------------------Rule 10 carrot cake technique 2----------------------
(defrule caCake2 (cType 4)(cTechnique 2) =>
(printout t crlf crlf "	Use Reverse Creaming Method" crlf crlf)
)
//--------------------Rule 11 carrot cake technique 3----------------------
(defrule caCake3 (cType 4)(cTechnique 3) =>
(printout t crlf crlf "	Use Reverse Creaming Method" crlf crlf)
)
//--------------------Rule 12 spong cake problem 1----------------------
(defrule drySpCake (cType 1)(cTechnique 1)(problem 1) =>
(printout t crlf crlf "	Do not overmix the batter" crlf crlf)
)
//--------------------Rule 13 spong cake problem 2----------------------
(defrule toughSpCake (cType 1)(cTechnique 1)(problem 2) =>
(printout t crlf crlf "	Do not overbake the cake" crlf crlf)
)
//--------------------Rule 14 spong cake problem 3----------------------
(defrule denseSpCake (cType 1)(cTechnique 1)(problem 3) =>
(printout t crlf crlf "	use the correct amount of flour and baking powder or baking soda" crlf crlf)
)
//--------------------Rule 15 spong cake problem 4----------------------
(defrule collapsedSpCake (cType 1)(cTechnique 1)(problem 4) =>
(printout t crlf crlf "	Do not open the oven door while the cake is baking" crlf crlf)
)
//--------------------Rule 16 spong cake problem 5----------------------
(defrule stickedSpCake (cType 1)(cTechnique 1)(problem 5) =>
(printout t crlf crlf "	Grease and flour the pan before adding the batter" crlf crlf)
)
//--------------------Rule 17 butter cake problem 1----------------------
(defrule dryBuCake (cType 2)(cTechnique 2)(problem 1) =>
(printout t crlf crlf "	Do not overmix the batter" crlf crlf)
)
//--------------------Rule 18 butter cake problem 2----------------------
(defrule toughBuCake (cType 2)(cTechnique 2)(problem 2) =>
(printout t crlf crlf "	Do not overbake the cake" crlf crlf)
)
//--------------------Rule 19 butter cake problem 3----------------------
(defrule denseBuCake (cType 2)(cTechnique 2)(problem 3) =>
(printout t crlf crlf "	use the correct amount of flour and baking powder or baking soda" crlf crlf)
)
//--------------------Rule 20 butter cake problem 4----------------------
(defrule collapsedBuCake (cType 2)(cTechnique 2)(problem 4) =>
(printout t crlf crlf "	Do not open the oven door while the cake is baking" crlf crlf)
)
//--------------------Rule 21 butter cake problem 5----------------------
(defrule stickedBuCake (cType 2)(cTechnique 2)(problem 5) =>
(printout t crlf crlf "	Grease and flour the pan before adding the batter" crlf crlf)
)
//--------------------Rule 22 chocolate cake problem 1----------------------
(defrule dryChCake1 (cType 3)(cTechnique 3)(problem 1) =>
(printout t crlf crlf "	Do not overmix the batter" crlf crlf)
)
//--------------------Rule 23 chocolate cake problem 2----------------------
(defrule toughChCake1 (cType 3)(cTechnique 3)(problem 2) =>
(printout t crlf crlf "	Do not overbake the cake" crlf crlf)
)
//--------------------Rule 24 chocolate cake problem 3----------------------
(defrule denseChCake1 (cType 3)(cTechnique 3)(problem 3) =>
(printout t crlf crlf "	use the correct amount of flour and baking powder or baking soda" crlf crlf)
)
//--------------------Rule 25 chocolate cake problem 4----------------------
(defrule collapsedChCake1 (cType 3)(cTechnique 3)(problem 4) =>
(printout t crlf crlf "	Do not open the oven door while the cake is baking" crlf crlf)
)
//--------------------Rule 26 chocolate cake problem 5----------------------
(defrule stickedChCake1 (cType 3)(cTechnique 3)(problem 5) =>
(printout t crlf crlf "	Grease and flour the pan before adding the batter" crlf crlf)
)
//--------------------Rule 27 chocolate cake problem 1----------------------
(defrule dryChCake2 (cType 3)(cTechnique 4)(problem 1) =>
(printout t crlf crlf "	Do not overmix the batter" crlf crlf)
)
//--------------------Rule 28 chocolate cake problem 2----------------------
(defrule toughChCake2 (cType 3)(cTechnique 4)(problem 2) =>
(printout t crlf crlf "	Do not overbake the cake" crlf crlf)
)
//--------------------Rule 29 chocolate cake problem 3----------------------
(defrule denseChCake2 (cType 3)(cTechnique 4)(problem 3) =>
(printout t crlf crlf "	use the correct amount of flour and baking powder or baking soda" crlf crlf)
)
//--------------------Rule 30 chocolate cake problem 4----------------------
(defrule collapsedChCake2 (cType 3)(cTechnique 4)(problem 4) =>
(printout t crlf crlf "	Do not open the oven door while the cake is baking" crlf crlf)
)
//--------------------Rule 31 chocolate cake problem 5----------------------
(defrule stickedChCake2 (cType 3)(cTechnique 4)(problem 5) =>
(printout t crlf crlf "	Grease and flour the pan before adding the batter" crlf crlf)
)
//--------------------Rule 32 carrot cake problem 1----------------------
(defrule dryCaCake (cType 4)(cTechnique 4)(problem 1) =>
(printout t crlf crlf "	Do not overmix the batter" crlf crlf)
)
//--------------------Rule 33 carrot cake problem 2----------------------
(defrule toughCaCake (cType 4)(cTechnique 4)(problem 2) =>
(printout t crlf crlf "	Do not overbake the cake" crlf crlf)
)
//--------------------Rule 34 carrot cake problem 3----------------------
(defrule denseCaCake (cType 4)(cTechnique 4)(problem 3) =>
(printout t crlf crlf "	use the correct amount of flour and baking powder or baking soda" crlf crlf)
)
//--------------------Rule 35 carrot cake problem 4----------------------
(defrule collapsedCaCake (cType 4)(cTechnique 4)(problem 4) =>
(printout t crlf crlf "	Do not open the oven door while the cake is baking" crlf crlf)
)
//--------------------Rule 36 carrot cake problem 5----------------------
(defrule stickedCaCake (cType 4)(cTechnique 4)(problem 5) =>
(printout t crlf crlf "	Grease and flour the pan before adding the batter" crlf crlf)
)