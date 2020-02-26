/* This file solves for the steady state of the model by setting capital stock equal to 1,
* and solving the resulting linear system of equations. These equations and resulting initial values, 
* aid in setting the 'initval' block for the stochastic simulation and impulse repsponse functions.
*/
//****************************************************************************
//Define variables
//****************************************************************************
var C          $C_{t}$                     (long_name='Aggregate Consumption')
    cE         $c_{t,j,E}$                 (long_name='consumption in period t at age E')
    cF         $c_{t,j,F}$                 (long_name='consumption in period t at age F')
    cM         $c_{t,j,M}$                 (long_name='consumption in period t at age M')
    cP         $c_{t,j,P}$                 (long_name='consumption in period t at age P')
    cR         $c_{t,j,R}$                 (long_name='consumption in period t at age R')
    L          $L_{t}$                     (long_name='Innelastic Labor Supplied by Households of age E to R-1')
    K          $K_{t}$                     (long_name='Capital Stock')
    Y          $Y_{t}$                     (long_name='Output')
    W          $W_{t}$                     (long_name='Wage Rate of Labor')
    Wt         $Wt_{t}$                   (long_name='After Tax Wage Rate of Labor')
    wE         $w_{t,j,E}$                 (long_name='Cohort age E share of total wages')
    wF         $w_{t,j,F}$                 (long_name='Cohort age E share of total wages')
    wM         $w_{t,j,M}$                 (long_name='Cohort age E share of total wages')
    wP         $w_{t,j,P}$                 (long_name='Cohort age E share of total wages')
    R          $R{t}$                      (long_name='Rental Rate of Capital')
    Theta      $\Theta_{t}$                (long_name='Aggregate Household Wealth')
    thetaE     $\theta_{t,j,E}$            (long_name='Household Wealth in period t')
    thetaF     $\theta_{t,j,F}$            (long_name='Household Wealth in period t')
    thetaM     $\theta_{t,j,M}$            (long_name='Household Wealth in period t')
    thetaP     $\theta_{t,j,P}$            (long_name='Household Wealth in period t')
    thetaR     $\theta_{t,j,R}$            (long_name='Household Wealth in period t')
    S          $S_{t}$                     (long_name='Aggregate Savings')
    sE         $s_{t,j,E}$                 (long_name='household savings in period t')
    sF         $s_{t,j,F}$                 (long_name='household savings in period t')
    sM         $s_{t,j,M}$                 (long_name='household savings in period t')
    sP         $s_{t,j,P}$                 (long_name='household savings in period t')
    sR         $s_{t,j,R}$                 (long_name='household savings in period t')
    X          $X_{t}$                     (long_name='Aggregate Intergenerational Household Transfers')
    xE         $x_{t,j,E}$                 (long_name='Intergenerational Household Transfers at period t')
    xF         $x_{t,j,F$                 (long_name='Intergenerational Household Transfers at period t')
    xM         $x_{t,j,M}$                 (long_name='Intergenerational Household Transfers at period t')
    xP         $x_{t,j,P}$                 (long_name='Intergenerational Household Transfers at period t')
    xR         $x_{t,j,R}$                 (long_name='Intergenerational Household Transfers at period t')
    Gg         $G_{t}^{g}$                 (long_name='Aggregate Gifts to Parents from Children')
    ggE        $g_{t,j,E}^{g}$             (long_name='Gifts to Parents from Children in period t')
    ggF        $g_{t,j,F}^{g}$             (long_name='Gifts to Parents from Children in period t')
    ggM        $g_{t,j,M}^{g}$             (long_name='Gifts to Parents from Children in period t')
    Bg         $B_{t}^{g}$                 (long_name='Aggregate Bequests from Parents to Children')
    bgM        $b_{t,j,M}^{g}$             (long_name='Bequest from Parents to Children in period t')
    bgP        $b_{t,j,P}^{g}$             (long_name='Bequest from Parents to Children in period t')
    bgR        $b_{t,j,R}^{g}$             (long_name='Bequest from Parents to Children in period t')
    Gr         $G_{t}^{r}$                 (long_name='Aggregate Gifts recieived from Children to Parents')
    grM        $g_{t,j,M}^{r}$             (long_name='Gifts recieved from Children to Parents in period t')
    grP        $g_{t,j,P}^{r}$             (long_name='Gifts recieved from Children to Parents in period t')
    grR        $g_{t,j,R}^{r}$             (long_name='Gifts recieved from Children to Parents in period t')
    Br         $B_{t}^{r}$                 (long_name='Aggregate Bequests recieived from Children to Parents')
    brE        $b_{t,j,E}^{r}$             (long_name='Beqests recieved from Children to Parents in period t')
    brF        $b_{t,j,F}^{r}$             (long_name='Beqests recieved from Children to Parents in period t')
    brM        $b_{t,j,M}^{r}$             (long_name='Beqests recieved from Children to Parents in period t')
    Omega      $\Omega_{t}$                (long_name='Aggregate Defined Contirbution Assets')
    omegaE     $\omega_{t,j,E}$            (long_name='Defined Contribution Assets in period t')
    omegaF     $\omega_{t,j,F}$            (long_name='Defined Contribution Assets in period t')
    omegaM     $\omega_{t,j,M}$            (long_name='Defined Contribution Assets in period t')
    omegaP     $\omega_{t,j,P}$            (long_name='Defined Contribution Assets in period t')
    omegaR     $\omega_{t,j,R}$            (long_name='Defined Contribution Assets in period t')
    bendc      $ben_{t,j,R}^{dc}$          (long_name='Defined Contribution benefits paid in period t')
    bendb      $ben_{t,j,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    Psi        $\Psi_{t}$                  (long_name='Aggregate Defined Benefit Assets')
    psiE       $\psi_{t,j,E}$              (long_name='Defined Benefit Assets in period t')
    psiF       $\psi_{t,j,F}$              (long_name='Defined Benefit Assets in period t')
    psiM       $\psi_{t,j,M}$              (long_name='Defined Benefit Assets in period t')
    psiP       $\psi_{t,j,P}$              (long_name='Defined Benefit Assets in period t')
    psiR       $\psi_{t,j,R}$              (long_name='Defined Benefit Assets in period t')
    condbE     $con_{t,j,E}^{db}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age E')
    condbF     $con_{t,j,F}^{db}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age F')
    condbM     $con_{t,j,M}^{db}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age M')
    condbP     $con_{t,j,P}^{db}$          (long_name='Defined Benefit Contiorubtions to Retirement Assets in period t at age P')
    condcE     $con_{t,j,E}^{dc}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age E')
    condcF     $con_{t,j,F}^{dc}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age F')
    condcM     $con_{t,j,M}^{dc}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age M')
    condcP     $con_{t,j,P}^{dc}$          (long_name='Defined Contribution Contiorubtions to Retirement Assets in period t at age P')
    ARC        $ARC_{t}$                   (long_name='Aggregate Annual Required Contribution in period t')
    Taut       $T_{t}$                     (long_name='Aggregate Transfers to households in period t')
    tautE      $\tau_{t,j,E}^{t}$          (long_name='Transfer to household in period t at age E to F-1')
    tautF      $\tau_{t,j,F}^{t}$          (long_name='Transfer to household in period t at age F to M-1')
    tautM      $\tau_{t,j,M}^{t}$          (long_name='Transfer to household in period t at age M to P-1')
    tautP      $\tau_{t,j,P}^{t}$          (long_name='Transfer to household in period t at age P to R-1')
    tautR      $\tau_{t,j,R}^{t}$          (long_name='Transfer to household in period t at age R to S-1')       
    RET        $RET_{t}$                   (long_name='Aggregate Retirement Assets of Households')
    retE       $ret_{t,j,E}$               (long_name='Retirement Assets of household in period t at age E to F-1')
    retF       $ret_{t,j,F}$               (long_name='Retirement Assets of household in period t at age F to M-1')
    retM       $ret_{t,j,M}$               (long_name='Retirement Assets of household in period t at age M to P-1')
    retP       $ret_{t,j,P}$               (long_name='Retirement Assets of household in period t at age P to R-1')
    retR       $ret_{t,j,R}$               (long_name='Retirement Assets of household in period t at age R to S-1') 
    REV        $REV_{t}$                   (long_name='Aggregate Government Tax Revenue')
    revE       $rev_{t,j,E}$               (long_name='Government Tax Revenue from Households of age E to F-1')
    revF       $rev_{t,j,F}$               (long_name='Government Tax Revenue from Households of age F to M-1')
    revM       $rev_{t,j,M}$               (long_name='Government Tax Revenue from Households of age M to P-1')
    revP       $rev_{t,j,P}$               (long_name='Government Tax Revenue from Households of age P to R-1')
    revR       $rev_{t,j,R}$               (long_name='Government Tax Revenue from Households of age R to S-1')
    junk
    ;
varexo phi            $\phi$             (long_name='Households weight of parents utility')
    gamma          $\gamma$           (long_name='Households weight of parents utility')
;
//****************************************************************************
//Define parameters
//****************************************************************************    
parameters beta    $\beta^{s-1}$      (long_name='Intertemporal Discount Factor')
    alpha          $\alpha$           (long_name='Capital Share of Production')
    varepsilon     $\varepsilon$      (long_name='Constant Elasticity of Substitution between Capital and Labor')
    delta          $\delta$           (long_name='Capital Depreciation Rate')
    tauc           $\tau_{t}^{c}$     (long_name='Tax Rate on Consumption')
    tauk           $\tau_{t}^{k}$     (long_name='Tax Rate on Capital Stock')
    taucorp        $\tau_{t}^{corp}$  (long_name='Tax Rate of Fimr')
    taul           $\tau_{t}^{l}$     (long_name='Tax Rate on Wages (labor)')
    deltatau       $\delta_{t}^{\tau}$ (long_name='Depreciation Expense allowed to Firm')
    varrho         $\varrho_{t}$      (long_name='Population Growth Rate')
    varphiE        $\varpih_{t,j,E}$  (long_name='Household at age E to F-1 share of Government Transfers')
    varphiF        $\varpih_{t,j,F}$  (long_name='Household at age F to M-1 share of Government Transfers')  
    varphiM        $\varpih_{t,j,M}$  (long_name='Household at age M to P-1 share of Government Transfers')
    varphiP        $\varpih_{t,j,P}$  (long_name='Household at age P to R-1 share of Government Transfers')
    varphiR        $\varpih_{t,j,R}$  (long_name='Household at age R to S-1 share of Government Transfers')
    weierpdb       $\wp_{t}^{DB}$     (long_name='Household Percentage Contribution to Defined Benefit Plan')
    weierpdc       $\wp_{t}^{DC}$     (long_name='Household Percentage of Wage Contribution to Defined Contribution Plan')
    IGE            $IGE_{t}$          (long_name='Intergenerational Elasticity of Income')
    Pw             $P_{t}^{w}$        (long_name='Parental Wage Determinant')
    arcdc          $arc_{t}^{DC}$     (long_name='Firm Percentage of total Wages Contribution to Defined Contribution Plan')
    arcdb          $arc_{t}^{DB}$     (long_name='Firm Percentage of total Wages Contribution to Defined Benefit Plan')
    A              $A$                (long_name='Total Factor Productivity Augmenting')           
    swrdb          $swr_{t,j,s}^{DB}$ (long_name='Safe Withdrawl rate of Defined Benefit Assets when Retired')
    swrdc          $swr_{t,j,s}^{DC}$ (long_name='Safe Withdrawl rate of Defined Contribution Assets when Retired')
    zetadb         $\zeta_{t}^{db}$   (long_name='Scaling factor on household defined benefit contributions')
    zetadc         $\zeta_{t}^{dc}$   (long_name='Scaling factor on household defined contirbution contributions')
    zE             $z_{t,j,E}$        (long_name='Population at age E')
    zF             $z_{t,j,F}$        (long_name='Population at age F')
    zM             $z_{t,j,M}$        (long_name='Population at age M')
    zP             $z_{t,j,P}$        (long_name='Population at age P')
    zR             $z_{t,j,R}$        (long_name='Population at age R')
    lab            $lab$                (long_name='Innelastic Labor Supplied by Households of age E to R-1')
    lambdaE        $\lambda_{E}$      (long_name='Share of total Wage of cohort age E')
    lambdaF        $\lambda_{F}$      (long_name='Share of total Wage of cohort age F')
    lambdaM        $\lambda_{M}$      (long_name='Share of total Wage of cohort age M')
    lambdaP        $\lambda_{P}$      (long_name='Share of total Wage of cohort age P')
    ;

//****************************************************************************
//set parameters
//****************************************************************************    
beta=.93;
alpha=.33; 
varepsilon=.87;
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
A=1.65;
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

//Steady State around capital at k=1//

Kss = 1.0;

Lss = lab*(zE+zF+zM+zP+zR);

ARCss = arcdb + arcdc;

Yss = A*((Kss^alpha)*(Lss^1-alpha));

Rss = (1-taucorp)*(alpha*(A)*((Lss/Kss)^1-alpha))-delta+(tauc*deltatau);

Wss = ((1-alpha)*(A))*((Kss/Lss)^alpha);

Wtss = (1-taul)*Wss;

wEss = lambdaE*(Wtss);

wFss = lambdaF*(Wtss);

wMss = lambdaM*(Wtss);

wPss = lambdaP*(Wtss);

condcEss = zetadc*(weierpdc + arcdc)*wEss;

condcFss = zetadc*(weierpdc + arcdc)*wFss;

condcMss = zetadc*(weierpdc + arcdc)*wMss;

condcPss = zetadc*(weierpdc + arcdc)*wPss;

condbEss = zetadb*(weierpdb + arcdb)*wEss;

condbFss = zetadb*(weierpdb + arcdb)*wFss;

condbMss = zetadb*(weierpdb + arcdb)*wMss;

condbPss = zetadb*(weierpdb + arcdb)*wPss;

omegaEss = (1+Rss)*condcEss;

omegaFss = (1+Rss)*condcFss;

omegaMss = (1+Rss)*condcMss;

omegaPss = (1+Rss)*condcPss;

bendcss = swrdc*omegaPss;

omegaRss = ((1+Rss)*condcPss)-bendcss;

Omegass = omegaEss + omegaFss + omegaMss + omegaPss + omegaRss;

psiEss = (1+Rss)*condbEss;

psiFss = (1+Rss)*condbFss;

psiMss = (1+Rss)*condbMss;

psiPss = (1+Rss)*condbPss;

bendbss = swrdb*wPss;

psiRss = (1+Rss)*(condbPss)-bendbss;

Psiss = psiEss + psiFss + psiMss + psiPss;

retEss = omegaEss + psiEss;

retFss = omegaFss + psiFss;

retMss = omegaMss + psiMss;

retPss = omegaPss + psiPss;

retRss = omegaRss + psiRss;

RETss = retEss + retFss + retMss + retPss + retRss;

grMss = phi*(((IGE*(1-taul*(wMss)))+((.6*(Pw*(wMss))))));

grPss = phi*(((IGE*(1-taul*(wPss)))+((.6*(Pw*(wPss))))));

grRss = phi*(((IGE*(1-taul*(wPss)))+((.6*(Pw*(wPss))))));

Grss = grMss + grPss + grRss;  

brEss = gamma*(((IGE*(1-taul*(wEss)))+((.6*(Pw*(wEss))))));

brFss = gamma*(((IGE*(1-taul*(wFss)))+((.6*(Pw*(wFss))))));

brMss = gamma*(((IGE*(1-taul*(wMss)))+((.6*(Pw*(wMss))))));

Brss = brEss + brFss + brMss;

xEss = (1-beta)*(1-tauk*(brEss));

xFss = (1-beta)*(1-tauk*(brFss));

xMss = (1-beta)*(1-tauk*(brMss+grMss));

xPss = (1-beta)*(1-tauk*(grPss));

xRss = (1-beta)*(1-tauk*(grRss));

Xss = xEss + xFss + xMss + xPss + xRss;

sEss= (1-beta)*(xEss+wEss);

sFss= (1-beta)*(xFss+wFss);

sMss= (1-beta)*(xFss+wFss);

sPss= (1-beta)*(xFss+wFss);

sRss = (1-beta)*(bendbss+bendcss+xRss);

Sss = sEss + sFss + sMss + sPss;

ggEss = phi*(sEss);

ggFss = phi*(sFss);

ggMss = phi*(sMss);

Ggss = ggEss + ggFss + ggMss; 

bgMss = gamma*sMss;

bgPss = gamma*sPss;

bgRss = gamma*sRss;

Bgss = bgMss + bgPss + bgRss;

cEss = (wEss+xEss)-sEss;

cFss = (wFss+xFss)-sFss;

cMss = (wMss+xMss)-sMss;

cPss = (wPss+xPss)-sPss;

cRss = (bendcss+bendbss+xRss) - sRss;

Css = cEss + cFss + cMss + cPss + cRss; 

REVss = ((1-taucorp)*Yss)-((taucorp)*(deltatau)*(Kss))+((tauc*Css)+((tauk)*(Xss + Sss))+((taul)*Wss));

revEss = (tauc*cEss)+((tauk)*(xEss + sEss))+((taul)*(lambdaE*Wss));

revFss = (tauc*cFss)+((tauk)*(xFss + sFss))+((taul)*(lambdaF*Wss));

revMss = (tauc*cMss)+((tauk)*(xMss + sMss))+((taul)*(lambdaM*Wss));

revPss = (tauc*cPss)+((tauk)*(xPss + sPss))+((taul)*(lambdaP*Wss));

revRss = (tauc*cRss)+((tauk)*(sRss + bendbss));

Tautss = REVss;

tautEss = varphiE*REVss; 

tautFss = varphiF*REVss;

tautMss = varphiM*REVss;

tautPss = varphiP*REVss;

tautRss = varphiR*REVss;

thetaEss = sEss*(1+Rss) + omegaEss + psiEss + tautEss - cEss + wEss + ggEss;

thetaFss = sFss*(1+Rss) + omegaFss + psiFss + tautFss - cFss + wFss + ggFss;

thetaMss = sMss*(1+Rss) + omegaMss + psiMss + tautMss - cMss + wMss + ggMss + bgMss;

thetaPss = sPss*(1+Rss) + omegaPss + psiPss + tautPss - cPss + wPss + bgPss;

thetaRss = sRss*(1+Rss) + omegaRss + psiRss + tautRss - cRss + bgRss;

Thetass = thetaEss + thetaFss + thetaMss + thetaPss + thetaRss;
//End steady-state calc//

model;

L = lab*(zE+zF+zM+zP+zR);

ARC = arcdb + arcdc;

Y = A*((K(-1)^alpha)*(L^1-alpha));

R = (1-taucorp)*(alpha*(A)*((L/K(-1))^1-alpha))-delta;

W = ((1-alpha)*(A))*((K(-1)/L)^alpha);

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

omegaE = (1+R(-1))*condcE(-1);

omegaF = (1+R(-1))*condcF(-1);

omegaM = (1+R(-1))*condcM(-1);

omegaP = (1+R(-1))*condcP(-1);

bendc = swrdc*omegaP(-1);

omegaR = ((1+R(-1))*condcP(-1))-bendc;

Omega = omegaE + omegaF + omegaM + omegaP + omegaR;

psiE = (1+R(-1))*condbE(-1);

psiF = (1+R(-1))*condbF(-1);

psiM = (1+R(-1))*condbM(-1);

psiP = (1+R(-1))*condbP(-1);

bendb = swrdb*wP(-1);

psiR = (1+R(-1))*(condbP(-1))-bendb;

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

K = (1+varrho)*(RET(-1) + S(-1));

junk=0.9*junk(+1);

end;

initval;
L     =Lss;
C      = Css;
cE     = cEss;
cF     = cFss;
cM     = cMss;
cP     = cPss;
cR     = cRss;
K      = Kss;
Y      = Yss;
wE      = wEss;
wF      = wFss;
wM      = wMss;
wP      = wPss;
R      = Rss;
Theta  = Thetass;
thetaE = thetaEss;
thetaF = thetaFss;
thetaM = thetaMss;
thetaP = thetaPss;
thetaR = thetaRss;
S      = Sss;
sE     = sEss;
sF     = sFss;
sM     = sMss;
sP     = sPss;
X      = Xss;
xE     = xEss;
xF     = xFss;
xM     = xMss;
xP     = xPss;
xR     = xRss;
Gg     = Ggss;
ggE    = ggEss;
ggF    = ggFss;
ggM    = ggMss;
Bg     = Bgss;
bgM    = bgMss;
bgP    = bgPss;
bgR    = bgRss;
Gr     = Grss;
grM    = grMss;
grP    = grPss;
grR    = grRss;
Br     = Brss;
brE    = brEss;
brF    = brFss;
brM    = brMss;
Omega  = Omegass;
omegaE = omegaEss;
omegaF = omegaFss;
omegaM = omegaMss;
omegaP = omegaPss;
bendc  = bendcss;
bendb  = bendbss;
Psi    = Psiss;
psiE   = psiEss;
psiF   = psiFss;
psiM   = psiMss;
psiP   = psiPss;
psiR   = psiRss;
condbE = condbEss;
condbF = condbFss;
condbM = condbMss;
condbP = condbPss;
condcE = condcEss;
condcF = condcFss;
condcM = condcMss;
condcP = condcPss;
ARC    = ARCss;
Taut   = Tautss;
tautE  = tautEss;
tautF  = tautFss;
tautM  = tautMss;
tautP  = tautPss;
tautR  = tautRss;
RET    = RETss;
retE   = retEss;
retF   = retFss;
retM   = retMss;
retP   = retPss;
retR   = retRss;
REV    = REVss;
revE   = revEss;
revF   = revFss;
revM   = revMss;
revP   = revPss;
revR  = revRss;
end;

shocks; 
var phi; stderr 0.009;
var gamma; stderr 0.009;
end;

stoch_simul(order=2, irf=40, periods=2000);
write_latex_dynamic_model;
write_latex_parameter_table;
write_latex_definitions;