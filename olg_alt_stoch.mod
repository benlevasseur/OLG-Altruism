/*This file solves the stocahstic simulation about the steady state, 
* more specifically Dynare calculates a first order Taylor Series Approximation about the steady state*/
//****************************************************************************
//Define variables
//****************************************************************************
var C          ${C_{t}}$                     (long_name='Aggregate Consumption')
    cE         ${c_{t,j,E}}$                 (long_name='consumption in period t at age E')
    cF         ${c_{t,j,F}}$                 (long_name='consumption in period t at age F')
    cM         ${c_{t,j,M}}$                 (long_name='consumption in period t at age M')
    cP         ${c_{t,j,P}}$                 (long_name='consumption in period t at age P')
    cR         ${c_{t,j,R}}$                 (long_name='consumption in period t at age R')
    L          ${L_{t}}$                     (long_name='Innelastic Labor Supplied by Households of age E to R-1')
    K          ${K_{t}}$                     (long_name='Capital Stock')
    Y          ${Y_{t}}$                     (long_name='Output')
    PI         ${\Pi_{t}}$                   (long_name='Firm Profits')
    W          ${W_{t}}$                     (long_name='Wage Rate of Labor')
    Wt          ${Wt_{t}}$                   (long_name='After Tax Wage Rate of Labor')
    wE         ${w_{t,j,E}}$                 (long_name='Cohort age E share of total wages')
    wF         ${w_{t,j,F}}$                 (long_name='Cohort age E share of total wages')
    wM         ${w_{t,j,M}}$                 (long_name='Cohort age E share of total wages')
    wP         ${w_{t,j,P}}$                 (long_name='Cohort age E share of total wages')
    R          ${R{t}}$                      (long_name='Rental Rate of Capital')
    Theta      ${\Theta_{t}}$                (long_name='Aggregate Household Wealth')
    thetaE     ${\theta_{t,j,E}}$            (long_name='Household Wealth in period t')
    thetaF     ${\theta_{t,j,F}}$            (long_name='Household Wealth in period t')
    thetaM     ${\theta_{t,j,M}}$            (long_name='Household Wealth in period t')
    thetaP     ${\theta_{t,j,P}}$            (long_name='Household Wealth in period t')
    thetaR     ${\theta_{t,j,R}}$            (long_name='Household Wealth in period t')
    S          ${S_{t}}$                     (long_name='Aggregate Savings')
    sE         ${s_{t,j,E}}$                 (long_name='household savings in period t')
    sF         ${s_{t,j,F}}$                 (long_name='household savings in period t')
    sM         ${s_{t,j,M}}$                 (long_name='household savings in period t')
    sP         ${s_{t,j,P}}$                 (long_name='household savings in period t')
    sR         ${s_{t,j,R}}$                 (long_name='household savings in period t')
    X          ${X_{t}}$                     (long_name='Aggregate Intergenerational Household Transfers')
    xE         ${x_{t,j,E}}$                 (long_name='Intergenerational Household Transfers at period t')
    xF         ${x_{t,j,F}}$                 (long_name='Intergenerational Household Transfers at period t')
    xM         ${x_{t,j,M}}$                 (long_name='Intergenerational Household Transfers at period t')
    xP         ${x_{t,j,P}}$                 (long_name='Intergenerational Household Transfers at period t')
    xR         ${x_{t,j,R}}$                 (long_name='Intergenerational Household Transfers at period t')
    Gg         ${G_{t}^{g}}$                 (long_name='Aggregate Gifts to Parents from Children')
    ggE        ${g_{t,j,E}^{g}}$             (long_name='Gifts to Parents from Children in period t')
    ggF        ${g_{t,j,F}^{g}}$             (long_name='Gifts to Parents from Children in period t')
    ggM        ${g_{t,j,M}^{g}}$             (long_name='Gifts to Parents from Children in period t')
    Bg         ${B_{t}^{g}}$                 (long_name='Aggregate Bequests from Parents to Children')
    bgM        ${b_{t,j,M}^{g}}$             (long_name='Bequest from Parents to Children in period t')
    bgP        ${b_{t,j,P}^{g}}$             (long_name='Bequest from Parents to Children in period t')
    bgR        ${b_{t,j,R}^{g}}$             (long_name='Bequest from Parents to Children in period t')
    Gr         ${G_{t}^{r}}$                 (long_name='Aggregate Gifts recieived from Children to Parents')
    grM        ${g_{t,j,M}^{r}}$             (long_name='Gifts recieved from Children to Parents in period t')
    grP        ${g_{t,j,P}^{r}}$             (long_name='Gifts recieved from Children to Parents in period t')
    grR        ${g_{t,j,R}^{r}}$             (long_name='Gifts recieved from Children to Parents in period t')
    Br         ${B_{t}^{r}}$                 (long_name='Aggregate Bequests recieived from Children to Parents')
    brE        ${b_{t,j,E}^{r}}$             (long_name='Beqests recieved from Children to Parents in period t')
    brF        ${b_{t,j,F}^{r}}$             (long_name='Beqests recieved from Children to Parents in period t')
    brM        ${b_{t,j,M}^{r}}$             (long_name='Beqests recieved from Children to Parents in period t')
    Omega      ${\Omega_{t}}$                (long_name='Aggregate Defined Contirbution Assets')
    omegaE     ${\omega_{t,j,E}}$            (long_name='Defined Contribution Assets in period t')
    omegaF     ${\omega_{t,j,F}}$            (long_name='Defined Contribution Assets in period t')
    omegaM     ${\omega_{t,j,M}}$            (long_name='Defined Contribution Assets in period t')
    omegaP     ${\omega_{t,j,P}}$            (long_name='Defined Contribution Assets in period t')
    omegaR     ${\omega_{t,j,R}}$            (long_name='Defined Contribution Assets in period t')
    bendc      ${ben_{t,j,R}^{dc}}$          (long_name='Defined Contribution benefits paid in period t')
    bendb      ${ben_{t,j,R}^{db}}$          (long_name='Defined Benefit benefits paid in period t')
    Psi        ${\Psi_{t}}$                  (long_name='Aggregate Defined Benefit Assets')
    psiE       ${\psi_{t,j,E}}$              (long_name='Defined Benefit Assets in period t')
    psiF       ${\psi_{t,j,F}}$              (long_name='Defined Benefit Assets in period t')
    psiM       ${\psi_{t,j,M}}$              (long_name='Defined Benefit Assets in period t')
    psiP       ${\psi_{t,j,P}}$              (long_name='Defined Benefit Assets in period t')
    psiR       ${\psi_{t,j,R}}$              (long_name='Defined Benefit Assets in period t')
    condbE     ${con_{t,j,E}^{db}}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age E')
    condbF     ${con_{t,j,F}^{db}}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age F')
    condbM     ${con_{t,j,M}^{db}}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age M')
    condbP     ${con_{t,j,P}^{db}}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age P')
    condcE     ${con_{t,j,E}^{dc}}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age E')
    condcF     ${con_{t,j,F}^{dc}}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age F')
    condcM     ${con_{t,j,M}^{dc}}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age M')
    condcP     ${con_{t,j,P}^{dc}}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age P')
    ARC        ${ARC_{t}}$                   (long_name='Aggregate Annual Required Contribution in period t')
    Taut       ${T_{t}}$                     (long_name='Aggregate Transfers to households in period t')
    tautE      ${\tau_{t,j,E}^{t}}$          (long_name='Transfer to household in period t at age E to F-1')
    tautF      ${\tau_{t,j,F}^{t}}$          (long_name='Transfer to household in period t at age F to M-1')
    tautM      ${\tau_{t,j,M}^{t}}$          (long_name='Transfer to household in period t at age M to P-1')
    tautP      ${\tau_{t,j,P}^{t}}$          (long_name='Transfer to household in period t at age P to R-1')
    tautR      ${\tau_{t,j,R}^{t}}$          (long_name='Transfer to household in period t at age R to S-1')       
    RET        ${RET_{t}}$                   (long_name='Aggregate Retirement Assets of Households')
    retE       ${ret_{t,j,E}}$               (long_name='Retirement Assets of household in period t at age E to F-1')
    retF       ${ret_{t,j,F}}$               (long_name='Retirement Assets of household in period t at age F to M-1')
    retM       ${ret_{t,j,M}}$               (long_name='Retirement Assets of household in period t at age M to P-1')
    retP       ${ret_{t,j,P}}$               (long_name='Retirement Assets of household in period t at age P to R-1')
    retR       ${ret_{t,j,R}}$               (long_name='Retirement Assets of household in period t at age R to S-1') 
    REV        ${REV_{t}}$                   (long_name='Aggregate Government Tax Revenue')
    revE       ${rev_{t,j,E}}$               (long_name='Government Tax Revenue from Households of age E to F-1')
    revF       ${rev_{t,j,F}}$               (long_name='Government Tax Revenue from Households of age F to M-1')
    revM       ${rev_{t,j,M}}$               (long_name='Government Tax Revenue from Households of age M to P-1')
    revP       ${rev_{t,j,P}}$               (long_name='Government Tax Revenue from Households of age P to R-1')
    revR       ${rev_{t,j,R}}$               (long_name='Government Tax Revenue from Households of age R to S-1') 
    ;
varexo A              ${A}$                (long_name='Total Factor Productivity Augmenting')
;
//****************************************************************************
//Define parameters
//****************************************************************************    
parameters beta    ${\beta^{s-1}}$      (long_name='Intertemporal Discount Factor')
    alpha          ${\alpha}$           (long_name='Capital Share of Production')
    phi            ${\phi}$             (long_name='Households weight of parents utility')
    gamma          ${\gamma}$           (long_name='Households weight of parents utility')
    varepsilon     ${\varepsilon}$      (long_name='Constant Elasticity of Substitution between Capital and Labor')
    delta          ${\delta}$           (long_name='Capital Depreciation Rate')
    tauc           ${\tau_{t}^{c}}$     (long_name='Tax Rate on Consumption')
    tauk           ${\tau_{t}^{k}}$     (long_name='Tax Rate on Capital Stock')
    taucorp        ${\tau_{t}^{corp}}$  (long_name='Tax Rate of Fimr')
    taul           ${\tau_{t}^{l}}$     (long_name='Tax Rate on Wages (labor)')
    deltatau       ${\delta_{t}^{\tau}}$(long_name='Depreciation Expense allowed to Firm')
    varrho         ${\varrho_{t}}$      (long_name='Population Growth Rate')
    varphiE        ${\varpih_{t,j,E}}$  (long_name='Household at age E to F-1 share of Government Transfers')
    varphiF        ${\varpih_{t,j,F}}$  (long_name='Household at age F to M-1 share of Government Transfers')  
    varphiM        ${\varpih_{t,j,M}}$  (long_name='Household at age M to P-1 share of Government Transfers')
    varphiP        ${\varpih_{t,j,P}}$  (long_name='Household at age P to R-1 share of Government Transfers')
    varphiR        ${\varpih_{t,j,R}}$  (long_name='Household at age R to S-1 share of Government Transfers')
    weierpdb       ${\wp_{t}^{DB}}$     (long_name='Household Percentage Contribution to Defined Benefit Plan')
    weierpdc       ${\wp_{t}^{DC}}$     (long_name='Household Percentage of Wage Contribution to Defined Contribution Plan')
    IGE            ${IGE_{t}}$          (long_name='Intergenerational Elasticity of Income')
    Pw             ${P_{t}^{w}}$        (long_name='Parental Wage Determinant')
    arcdc          ${arc_{t}^{DC}}$     (long_name='Firm Percentage of total Wages Contribution to Defined Contribution Plan')
    arcdb          ${arc_{t}^{DB}}$     (long_name='Firm Percentage of total Wages Contribution to Defined Benefit Plan')           
    swrdb          ${swr_{t,j,s}^{DB}}$ (long_name='Safe Withdrawl rate of Defined Benefit Assets when Retired')
    swrdc          ${swr_{t,j,s}^{DC}}$ (long_name='Safe Withdrawl rate of Defined Contribution Assets when Retired')
    zetadb         ${\zeta_{t}^{db}}$   (long_name='Scaling factor on household defined benefit contributions')
    zetadc         ${\zeta_{t}^{dc}}$   (long_name='Scaling factor on household defined contirbution contributions')
    zE             ${z_{t,j,E}}$        (long_name='Population at age E')
    zF             ${z_{t,j,F}}$        (long_name='Population at age F')
    zM             ${z_{t,j,M}}$        (long_name='Population at age M')
    zP             ${z_{t,j,P}}$        (long_name='Population at age P')
    zR             ${z_{t,j,R}}$        (long_name='Population at age R')
    lab            ${lab}$                (long_name='Innelastic Labor Supplied by Households of age E to R-1')
    lambdaE        ${\lambda_{E}}$      (long_name='Share of total Wage of cohort age E')
    lambdaF        ${\lambda_{F}}$      (long_name='Share of total Wage of cohort age F')
    lambdaM        ${\lambda_{M}}$      (long_name='Share of total Wage of cohort age M')
    lambdaP        ${\lambda_{P}}$      (long_name='Share of total Wage of cohort age P')
    ;

//****************************************************************************
//set parameters
//****************************************************************************    
beta=.93;
alpha=.33;
phi=.03; 
gamma=.07;
varepsilon=.55;
delta=.08;
tauc=.0635;
tauk=.16;
taucorp=.21; 
taul=.1025; 
deltatau=.01;
varrho=.0046;
varphiE=.15;
varphiF=.22;
varphiM=.16;
varphiP=.14;
varphiR=.33;
weierpdb=.05;
weierpdc=.05;
arcdb=.07;
arcdc=.05;
IGE=.4;
Pw=1.1;
lab=1;
swrdb=.02;
swrdc=.02;
zetadb=.282;
zetadc=.638;
zE=1;
zF=1;
zM=1;
zP=1;
zR=1;
lambdaE=.17;
lambdaF=.22;
lambdaM=.26;
lambdaP=.35;

model;
L = lab*(zE+zF+zM+zP+zR);

ARC = arcdb + arcdc;

Y = A*(((((alpha)^1/varepsilon))*((K)^((varepsilon-1)/varepsilon))+((1-alpha)^(1/varepsilon))*((L)^((varepsilon-1)/varepsilon)))^((varepsilon/(varepsilon-1))));

R = (1-taucorp)*((A)^(((varepsilon-1)/varepsilon)))*(((alpha)*(Y/K))^(1/varepsilon))-delta + (taucorp*(deltatau));

PI = ((1-taucorp)*(Y))-((R+delta)*K)+((taucorp)*(deltatau)*(K));

W = (((A)^(((varepsilon-1)/varepsilon)))*(((1-alpha)*(Y/(1-ARC)*L)))^(1/varepsilon));

Wt = (1-taul)*W;

wE = lambdaE*(Wt);

wF = lambdaF*(Wt);

wM = lambdaM*(Wt);

wP = lambdaP*(Wt);

condcE = zetadc*(weierpdc + arcdc)*wE;

condcF = zetadc*(weierpdc + arcdc)*wF;

condcM = zetadc*(weierpdc + arcdc)*wM;

condcP = zetadc*(weierpdc + arcdc)*wP;

condbE = zetadb*(weierpdb + arcdb)*wE;

condbF = zetadb*(weierpdb + arcdb)*wF;

condbM = zetadb*(weierpdb + arcdb)*wM;

condbP = zetadb*(weierpdb + arcdb)*wP;

omegaE = (1+R)*condcE;

omegaF = (1+R)*condcF;

omegaM = (1+R)*condcM;

omegaP = (1+R)*condcP;

bendc = swrdc*omegaP;

omegaR = ((1+R)*condcP)-bendc;

Omega = omegaE + omegaF + omegaM + omegaP + omegaR;

psiE = (1+R)*condbE;

psiF = (1+R)*condbF;

psiM = (1+R)*condbM;

psiP = (1+R)*condbP;

bendb = swrdb*wP;

psiR = (1+R)*(condbP)-bendb;

Psi = psiE + psiF + psiM + psiP;

retE = omegaE + psiE;

retF = omegaF + psiF;

retM = omegaM + psiM;

retP = omegaP + psiP;

retR = omegaR + psiR;

RET = retE + retF + retM + retP + retR;

grM = phi*(((IGE*(1-taul*(wM)))+((.6*(Pw*(wM))))));

grP = phi*(((IGE*(1-taul*(wP)))+((.6*(Pw*(wP))))));

grR = phi*(((IGE*(1-taul*(wP)))+((.6*(Pw*(wP))))));

Gr = grM + grP + grR;  

brE = gamma*(((IGE*(1-taul*(wE)))+((.6*(Pw*(wE))))));

brF = gamma*(((IGE*(1-taul*(wF)))+((.6*(Pw*(wF))))));

brM = gamma*(((IGE*(1-taul*(wM)))+((.6*(Pw*(wM))))));

Br = brE + brF + brM;

xE = (1-beta)*(1-tauk*(brE));

xF = (1-beta)*(1-tauk*(brF));

xM = (1-beta)*(1-tauk*(brM+grM));

xP = (1-beta)*(1-tauk*(grP));

xR = (1-beta)*(1-tauk*(grR));

X = xE + xF + xM + xP + xR;

sE= (1-beta)*(xE+wE);

sF= (1-beta)*(xF+wF);

sM= (1-beta)*(xM+wM);

sP= (1-beta)*(xP+wP);

sR = (1-beta)*(bendb+bendc+xR);

S = sE + sF + sM + sP;

ggE = phi*(sE);

ggF = phi*(sF);

ggM = phi*(sM);

Gg = ggE + ggF + ggM; 

bgM = gamma*sM;

bgP = gamma*sP;

bgR = gamma*sR;

Bg = bgM + bgP + bgR;

cE = (wE+xE)-sE;

cF = (wF+xF)-sF;

cM = (wM+xM)-sM;

cP = (wP+xP)-sP;

cR = (bendc+bendb+xR) - sR;

C = cE + cF + cM + cP + cR; 

REV = ((1-taucorp)*Y)-((taucorp)*(deltatau)*(K))+((tauc*C)+((tauk)*(X + S))+((taul)*W));

revE = (tauc*cE)+((tauk)*(xE + sE))+((taul)*(lambdaE*W));

revF = (tauc*cF)+((tauk)*(xF + sF))+((taul)*(lambdaF*W));

revM = (tauc*cM)+((tauk)*(xM + sM))+((taul)*(lambdaM*W));

revP = (tauc*cP)+((tauk)*(xP + sP))+((taul)*(lambdaP*W));

revR = (tauc*cR)+((tauk)*(sR + bendb));

Taut = REV;

tautE = varphiE*REV; 

tautF = varphiF*REV;

tautM = varphiM*REV;

tautP = varphiP*REV;

tautR = varphiR*REV;

thetaE = sE*(1+R) + omegaE + psiE + tautE - cE + wE + ggE;

thetaF = sF*(1+R) + omegaF + psiF + tautF - cF + wF + ggF;

thetaM = sM*(1+R) + omegaM + psiM + tautM - cM + wM + ggM + bgM;

thetaP = sP*(1+R) + omegaP + psiP + tautP - cP + wP + bgP;

thetaR = sR*(1+R) + omegaR + psiR + tautR - cR + bgR;

Theta = thetaE + thetaF + thetaM + thetaP + thetaR;

K(+1) = (1+varrho)*(RET + S);

end;


initval;
C=     		 55.0431;
cE =    		 9.2981;
cF =    		 12.0138;
cM   =  		 14.1832;
cP   =  		 19.08;
cR   =  		 0.468021;
L    =  		 5;
K    =  		 12.175;
Y    =  		 10.6058;
PI    = 		 6.24904;
W    =  		 65.103;
Wt   =  		 58.4299;
wE   =  		 9.93309;
wF  =   		 12.8546;
wM  =   		 15.1918;
wP  =   		 20.4505;
R   =   		 0.0970117;
Theta =		 35.4306;
thetaE 	=	 5.37212;
thetaF 	=	 7.46731;
thetaM 	=	 6.99036;
thetaP 	=	 7.92912;
thetaR 	=	 7.67169;
S      =		 4.1078;
sE    = 		 0.699857;
sF    = 		 0.904262;
sM    = 		 1.06756;
sP    =		 1.43613;
sR    = 		 0.0352274;
X    =  		 0.318558;
xE   =  		 0.0648659;
xF   =  		 0.0634481;
xM   =  		 0.0590198;
xP   =  		 0.0656122;
xR   =  		 0.0656122;
Gg   =  		 0.0801502;
ggE   = 		 0.0209957;
ggF  =  		 0.0271279;
ggM   = 		 0.0320267;
Bg    = 		 0.177724;
bgM   = 		 0.0747289;
bgP   = 		 0.100529;
bgR   = 		 0.00246591;
Gr    = 		 1.07764;
grM   = 		 0.294111;
grP    =		 0.391765;
grR    	=	 0.391765;
Br     =		 1.72965;
brE  =  		 0.458401;
brF =   		 0.584989;
brM  =  		 0.68626;
Omega  	=	 5.49216;
omegaE 	=	 0.69521;
omegaF 	=	 0.899684;
omegaM 	=	 1.06326;
omegaP 	=	 1.43132;
omegaR 	=	 1.40269;
bendc  	=	 0.0286263;
bendb  	=	 0.409009;
Psi    	=	 2.16909;
psiE   	=	 0.368745;
psiF   	=	 0.477199;
psiM   	=	 0.563962;
psiP   	=	 0.75918;
psiR   	=	 0.350171;
condbE 	=	 0.336136;
condbF 	=	 0.434999;
condbM 	=	 0.51409;
condbP 	=	 0.692044;
condcE 	=	 0.633731;
condcF 	=	 0.820122;
condcM 	=	 0.969235;
condcP= 1.30474;
ARC  = 0.12;
Taut  = 19.2295;
tautE = 2.88443;
tautF = 4.2305;
tautM = 3.07672;
tautP = 2.69213;
tautR = 6.34574;
RET  = 8.01142;
retE = 1.06395;
retF = 1.37688;
retM = 1.62723;
retP = 2.1905;
retR = 1.75286;
REV  = 19.2295;
revE = 1.8472;
revF = 2.38578;
revM = 2.81588;
revP = 3.78742;
revR = 0.100797;
end;

shocks;
var A; stderr .45;
end;

stoch_simul;
