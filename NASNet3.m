function f = NASNet3(xin)
xin=xin';
W1 = [0.105837009847164 -0.91073352098465 -0.335641890764236;0.963171362876892 -0.806177079677582 1.02722132205963;-0.0745021849870682 0.162055358290672 0.624936103820801;1.52794981002808 -0.204684600234032 -0.178862646222115;-0.129488170146942 0.0687415301799774 0.924241304397583];
b1 = [1.17497766017914;0.995313405990601;0.541577816009521;0.568098902702332;0.0380316749215126];
Z1 = hardswish( W1 * xin + b1 ) ;
W1_2 = [-1.74902594089508 0.253176987171173 2.08744764328003 -0.27012887597084 -1.23887896537781;0.076275996863842 -3.29340410232544 -2.53430509567261 -2.19661641120911 1.55893230438232;1.24968540668488 0.278367578983307 2.31943607330322 0.163439527153969 -2.55850625038147;0.592749238014221 1.12868702411652 -1.79846024513245 -0.426546543836594 3.05840754508972;-0.0955827981233597 0.455686002969742 -2.59627985954285 -0.442591488361359 -1.21464931964874];
b1_2 = [0.920302629470825;1.17863011360168;-1.56983602046967;-1.52434301376343;0.710077464580536];
Z2 = hardswish( W1_2* Z1 + b1_2 ) ;
W1_3 = [0.225462079048157 0.567127704620361 -0.671890079975128 0.664543509483337 3.15662217140198;0.0521755293011665 4.56075668334961 1.38695442676544 0.0863324999809265 -2.3513617515564;-1.22891139984131 0.101060263812542 -0.116131313145161 -1.10699331760406 2.06537795066833;-0.619969844818115 1.97113251686096 -2.10169506072998 -4.06289529800415 0.0810179859399796;-1.11621510982513 0.794302403926849 0.0111040621995926 -0.305289089679718 2.62977170944214];
b1_3 = [-1.08239686489105;-0.0911973714828491;-0.335584849119186;-0.558425068855286;-0.669085085391998];
Z3 = hardswish( W1_3* Z2 + b1_3 ) ;
W1_4 = [1.13034904003143 -0.500567376613617 0.772661507129669 0.266823023557663 -1.1529335975647;1.33766734600067 -1.77410781383514 0.247507393360138 0.897997677326202 -0.658260405063629;-1.66996550559998 -0.192446559667587 0.248085379600525 -0.548914611339569 -0.51258373260498;-2.80815505981445 0.199796631932259 0.172322675585747 -1.08061718940735 2.58825588226318;-0.293542414903641 2.19344997406006 -3.18234920501709 0.00644613523036242 1.38460469245911];
b1_4 = [-0.945064663887024;0.0039843637496233;-1.28997206687927;0.564134895801544;-0.673306226730347];
Z4 = hardswish( W1_4* ( Z2 + Z3 ) + b1_4 ) ;
W1_5 = [1.35570573806763 -4.61919212341309 -1.99104738235474 -0.384455502033234 0.792042791843414;-18.5630321502686 3.51013970375061 1.4988157749176 -4.49940633773804 -4.14402866363525;1.82514500617981 -1.53620290756226 -1.80502820014954 0.329203367233276 -1.25263404846191;-1.12091147899628 -0.443725854158401 1.34595966339111 -0.0415845364332199 1.99495482444763;2.25104165077209 -3.07580542564392 -1.61902093887329 0.139653742313385 -1.27127778530121];
b1_5 = [0.903060972690582;3.31958937644958;-0.0200470834970474;0.180824771523476;-0.107017435133457];
Z5 = hardswish( W1_5* ( Z1 + Z2 + Z3 + Z4 ) + b1_5 ) ;
Z1 = ( Z4 + Z5 );
WZ = [0.610903561115265 0.157404646277428 0.661589562892914 -1.33492684364319 0.475322902202606];
bz = -0.378834336996078;
f = WZ * Z1 + bz ;
