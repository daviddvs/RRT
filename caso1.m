(* ::Package:: *)

(* ::Input:: *)
(*<< "/home/docencia/Documents/David/RRT/RandomData.m"*)


(* ::Input:: *)
(*RandomData[]*)


(* ::Input:: *)
(*max=10000;*)


(* ::Input:: *)
(*array=Table[RandomData[],{i,max}];(**)*)


(* ::Input:: *)
(*Histogram[array]*)


(* ::Input:: *)
(*lambda=100;*)


(* ::Input:: *)
(*arrayExp=Table[RandomExp[lambda],{i,max}];(*RandomExp es una funcion de Armando que ya tiene en cuenta lo de la dist uniforme*)*)


(* ::Input:: *)
(*Histogram[arrayExp,l,CDF]*)


(* ::Input:: *)
(*(*Para pedir ayuda de una funcion*)*)
(*?RandomData`* *)


(* ::Input:: *)
(*(*Trunca un array entre 50 y 100*)*)
(*arrayExp[[50;;100]];*)


(* ::Input:: *)
(*(*La media tiene que salir proxima a 1/lambda*)*)
(*mean=Mean[arrayExp[[1;;100]]]*)


(* ::InheritFromParent:: *)
(**)
(*InterArr=Table[RandomExp[lambda],10000];*)


(* ::Input:: *)
(*InterArr[[1;;100]];*)


(* ::Input:: *)
(*Arriv=Accumulate[InterArr];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*mu=100;*)
(*ServTime=Table[RandomExp[mu],10000];*)
(*ServTime[[1;;11]]*)


(* ::Input:: *)
(*FifoSchedulling[arrivals_,service_]:=Module[{n,checkTime},n=1;checkTime=arrivals[[1]];*)
(*(If[checkTime>=#,checkTime+=service[[n++]],checkTime=#+service[[n++]]])&/@arrivals]*)


(* ::Input:: *)
(*Departures=FifoSchedulling[Arriv,ServTime];*)
(**)


(* ::Input:: *)
(*ListPlot[{Arriv[[1;;20]],Departures[[1;;20]]}]*)


(* ::Input:: *)
(*(*Usar Map[] (sirve para recorrer una lista) en lugar de For[]*)*)
(*FifoSchedulling[arrivals_,service_]:=Module[{n,checkTime},n=1;checkTime=arrivals[[1]];*)
(*Map[*)
(*(If[checkTime>=#,checkTime+=service[[n++]],checkTime=#+service[[n++]]])&,*)
(*arrivals]]*)


(* ::Input:: *)
(*(*MM/#colas/#usuarios: si hay dos colas y 3 usuarios, cada usuarios ira a una cola,y el tercero se queda esperando*)*)


(* ::Input:: *)
(*Manipulate[*)
(*ListPlot[{Arriv[[origin;;origin+width]],Departures[[origin;;origin+width]]}]*)
(*, {origin,1,1000-width,1},{width,10,50,1}*)
(*]*)


(* ::Input:: *)
(*(*Falta hacer la escalera*)*)
