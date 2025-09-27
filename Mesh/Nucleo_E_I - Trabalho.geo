// Gmsh project created on Mon Aug 18 16:36:53 2025
//+

m = 1;

wcore = 0.1*m;
hcoil = 0.1*m;
wcoil = 0.1*m;
hgap = 0.02*m;

hI = wcore;

x1 = wcore;
x2 = x1 + wcore;
x3 = x2 + wcoil;
x4 = x3 + wcore;


y2 =-hgap;
y1 = y2 - hI;
y3 = 0;
y4 = hcoil;
y5 = hcoil + wcore;

lc = 0.01*m; 
le = 0.005*m; // densidade de malha no entreferro

Ra = 1.1*Sqrt(x3^2+y5^2); // Raio externo


Point(1) = {0, y1, 0, lc};
Point(2) = {0, y2, 0, le};
Point(3) = {0, y3, 0, le};
Point(4) = {0, y4, 0, lc};
Point(5) = {0, y5, 0, lc};

Point(13) = {x1, y3, 0, le};
Point(14) = {x1, y4, 0, lc};

Point(23) = {x2, y3, 0, le};
Point(24) = {x2, y4, 0, lc};

Point(31) = {x3, y1, 0, lc};
Point(32) = {x3, y2, 0, le};
Point(33) = {x3, y3, 0, le};
Point(34) = {x3, y4, 0, lc};
Point(35) = {x3, y5, 0, lc};



//+
Line(1) = {1, 2};
//+
Line(19) = {2, 3};
Line(20) = {3,4};
Line(2) = {4, 5};
//+
Line(3) = {5, 35};
//+
Line(4) = {35, 34};
//+
Line(5) = {34, 24};
//+
Line(6) = {24, 14};
//+
Line(7) = {14, 4};
//+
Line(11) = {31, 32};
Line(21) = {32, 33};
Line (22) = {33, 34};
//+
Line(12) = {13, 14};
//+
Line(13) = {23, 24};
//+
Line(14) = {3, 13};
//+
Line(15) = {13, 23};
//+
Line(16) = {23, 33};
//+
Line(17) = {2, 32};
//+
Line(18) = {1, 31};
//+
Curve Loop(1) = {2, 3, 4, 5, 6, 7};
//+
Plane Surface(1) = {-1};
//+
Curve Loop(2) = {20, -7, -12, -14};
//+
Plane Surface(2) = {-2};
//+
Curve Loop(3) = {12, -6, -13, -15};
//+
Plane Surface(3) = {-3};
//+
Curve Loop(4) = {13, -5, -22, -16};
//+
Plane Surface(4) = {-4};
//+
Curve Loop(5) = {19, 14, 15, 16, -21, -17};
//+
Plane Surface(5) = {-5};
//+
Curve Loop(6) = {1, 17, -11, -18};
//+
Plane Surface(6) = {-6};
//+
Point(36) = {0, 2.16, 0, lc};
Point(37) = {0, -2.16, 0, lc};
//+
//+
Circle(23) = {37, 3, 36};
//+


//+
Line(24) = {37, 1};
//+

Line(25) = {5, 5};
//+
Line(26) = {5, 36};
//+
Curve Loop(7) = {26, -23, 24, 18, 11, 21, 22, -4, -3};
//+
Plane Surface(7) = {-7};
//+
Physical Surface("ar", 1) = {7};
//+
Physical Surface("entreferro", 2) = {5};
//+
Physical Surface("culatrainferior", 3) = {6};
//+
Physical Surface("nucleosuperior1", 4) = {2};
//+
Physical Surface("coil", 5) = {3};
//+
Physical Surface("nucleosuperior2", 6) = {4};
//+
Physical Surface("nucleosuperior3", 7) = {1};
//+
Physical Curve("simetria", 101) = {26, 2, 20, 19, 1, 24};

//+
Physical Curve("curvacirculo", 102) = {23};


//+
Point(39) = {0, 0, 0, 1.0};

//+
Point(41) = {0.3, 0, 0, 1.0};
//+
Physical Curve("bordatensormaxwell", 600) = {17};
//+
Physical Curve("fmaxwellentreferrointerno", 601) = {14};
//+
Physical Curve("fmaxwellentreferroexterno", 602) = {16};
