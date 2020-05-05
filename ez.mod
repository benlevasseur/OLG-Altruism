
@#define simulation_periods=162
//****************************************************************************
//Define variables
//**************************************************************************** 
var C          $C_{t}$                     (long_name='Aggregate Consumption')
    cE         $c_{t,j,E}$                 (long_name='consumption in period t at age E')
    cE1        $c_{t,1,E}$                 (long_name='consumption in period t at age E of wage profile 1')
    cE2        $c_{t,2,E}$                 (long_name='consumption in period t at age E of wage profile 2')
    cE3        $c_{t,3,E}$                 (long_name='consumption in period t at age E of wage profile 3')
    cE4        $c_{t,4,E}$                 (long_name='consumption in period t at age E of wage profile 4')
    cE5        $c_{t,5,E}$                 (long_name='consumption in period t at age E of wage profile 5')
    cE6        $c_{t,6,E}$                 (long_name='consumption in period t at age E of wage profile 6')
    cE7        $c_{t,7,E}$                 (long_name='consumption in period t at age E of wage profile 7')
    cF         $c_{t,j,F}$                 (long_name='consumption in period t at age F')
    cF1        $c_{t,1,F}$                 (long_name='consumption in period t at age F of wage profile 1')
    cF2        $c_{t,2,F}$                 (long_name='consumption in period t at age F of wage profile 2')
    cF3        $c_{t,3,F}$                 (long_name='consumption in period t at age F of wage profile 3')
    cF4        $c_{t,4,F}$                 (long_name='consumption in period t at age F of wage profile 4')
    cF5        $c_{t,5,F}$                 (long_name='consumption in period t at age F of wage profile 5')
    cF6        $c_{t,6,F}$                 (long_name='consumption in period t at age F of wage profile 6')
    cF7        $c_{t,7,F}$                 (long_name='consumption in period t at age F of wage profile 7')
    cM         $c_{t,j,M}$                 (long_name='consumption in period t at age M')
    cM1        $c_{t,1,M}$                 (long_name='consumption in period t at age M of wage profile 1')
    cM2        $c_{t,2,M}$                 (long_name='consumption in period t at age M of wage profile 2')
    cM3        $c_{t,3,M}$                 (long_name='consumption in period t at age M of wage profile 3')
    cM4        $c_{t,4,M}$                 (long_name='consumption in period t at age M of wage profile 4')
    cM5        $c_{t,5,M}$                 (long_name='consumption in period t at age M of wage profile 5')
    cM6        $c_{t,6,M}$                 (long_name='consumption in period t at age M of wage profile 6')
    cM7        $c_{t,7,M}$                 (long_name='consumption in period t at age M of wage profile 7 ')
    cP         $c_{t,j,P}$                 (long_name='consumption in period t at age P')
    cP1        $c_{t,1,P}$                 (long_name='consumption in period t at age P of wage profile 1')
    cP2        $c_{t,2,P}$                 (long_name='consumption in period t at age P of wage profile 2')
    cP3        $c_{t,3,P}$                 (long_name='consumption in period t at age P of wage profile 3')
    cP4        $c_{t,4,P}$                 (long_name='consumption in period t at age P of wage profile 4')
    cP5        $c_{t,5,P}$                 (long_name='consumption in period t at age P of wage profile 5')
    cP6        $c_{t,6,P}$                 (long_name='consumption in period t at age P of wage profile 6')
    cP7        $c_{t,7,P}$                 (long_name='consumption in period t at age P of wage profile 7')
    cR         $c_{t,j,R}$                 (long_name='consumption in period t at age R')
    cR1        $c_{t,1,R}$                 (long_name='consumption in period t at age R of wage profile 1')
    cR2        $c_{t,2,R}$                 (long_name='consumption in period t at age R of wage profile 2')
    cR3        $c_{t,3,R}$                 (long_name='consumption in period t at age R of wage profile 3')
    cR4        $c_{t,4,R}$                 (long_name='consumption in period t at age R of wage profile 4')
    cR5        $c_{t,5,R}$                 (long_name='consumption in period t at age R of wage profile 5')
    cR6        $c_{t,6,R}$                 (long_name='consumption in period t at age R of wage profile 6')
    cR7        $c_{t,7,R}$                 (long_name='consumption in period t at age R of wage profile 7')
    K          $K_{t}$                     (long_name='Capital Stock')
    Y          $Y_{t}$                     (long_name='Output')
    W          $W_{t}$                     (long_name='Aggregate Wage')
    Pi 
    WPost      $W_{t}^{p}$                 (long_name='Aggregate After-Tax Wage')
    wE         $w_{t,j,E}$                 (long_name='Cohort age E share of total wages')
    wE1        $w_{t,1,E}$                 (long_name='Cohort age E share of total wages of wage profile 1')
    wE2        $w_{t,2,E}$                 (long_name='Cohort age E share of total wages of wage profile 2')
    wE3        $w_{t,3,E}$                 (long_name='Cohort age E share of total wages of wage profile 3')
    wE4        $w_{t,4,E}$                 (long_name='Cohort age E share of total wages of wage profile 4')
    wE5        $w_{t,5,E}$                 (long_name='Cohort age E share of total wages of wage profile 5')
    wE6        $w_{t,6,E}$                 (long_name='Cohort age E share of total wages of wage profile 6')
    wE7        $w_{t,7,E}$                 (long_name='Cohort age E share of total wages of wage profile 7')
    wF         $w_{t,j,F}$                 (long_name='Cohort age E share of total wages')
    wF1        $w_{t,1,F}$                 (long_name='Cohort age F share of total wages of wage profile 1')
    wF2        $w_{t,2,F}$                 (long_name='Cohort age F share of total wages of wage profile 2')
    wF3        $w_{t,3,F}$                 (long_name='Cohort age F share of total wages of wage profile 3')
    wF4        $w_{t,4,F}$                 (long_name='Cohort age F share of total wages of wage profile 4')
    wF5        $w_{t,5,F}$                 (long_name='Cohort age F share of total wages of wage profile 5')
    wF6        $w_{t,6,F}$                 (long_name='Cohort age F share of total wages of wage profile 6')
    wF7        $w_{t,7,F}$                 (long_name='Cohort age F share of total wages of wage profile 7')
    wM         $w_{t,j,M}$                 (long_name='Cohort age M share of total wages')
    wM1        $w_{t,1,M}$                 (long_name='Cohort age M share of total wages of wage profile 1')
    wM2        $w_{t,2,M}$                 (long_name='Cohort age M share of total wages of wage profile 2')
    wM3        $w_{t,3,M}$                 (long_name='Cohort age M share of total wages of wage profile 3')
    wM4        $w_{t,4,M}$                 (long_name='Cohort age M share of total wages of wage profile 4')
    wM5        $w_{t,5,M}$                 (long_name='Cohort age M share of total wages of wage profile 5')
    wM6        $w_{t,6,M}$                 (long_name='Cohort age M share of total wages of wage profile 6')
    wM7        $w_{t,7,M}$                 (long_name='Cohort age M share of total wages of wage profile 7')
    wP         $w_{t,j,P}$                 (long_name='Cohort age P share of total wages')
    wP1        $w_{t,1,P}$                 (long_name='Cohort age P share of total wages of wage profile 1')
    wP2        $w_{t,2,P}$                 (long_name='Cohort age P share of total wages of wage profile 2')
    wP3        $w_{t,3,P}$                 (long_name='Cohort age P share of total wages of wage profile 3')
    wP4        $w_{t,4,P}$                 (long_name='Cohort age P share of total wages of wage profile 4')
    wP5        $w_{t,5,P}$                 (long_name='Cohort age P share of total wages of wage profile 5')
    wP6        $w_{t,6,P}$                 (long_name='Cohort age P share of total wages of wage profile 6')
    wP7        $w_{t,7,P}$                 (long_name='Cohort age P share of total wages of wage profile 7')
    R          $R_{t}$                      (long_name='Rental Rate of Capital')
    Theta      $\Theta_{t}$                (long_name='Aggregate Household Wealth')
    thetaE     $\theta_{t,j,E}$            (long_name='Household Wealth in period t')
    thetaE1    $\theta_{t,1,E}$            (long_name='Household Wealth in period t at age E of wage profile 1')
    thetaE2    $\theta_{t,2,E}$            (long_name='Household Wealth in period t at age E of wage profile 2')
    thetaE3    $\theta_{t,3,E}$            (long_name='Household Wealth in period t at age E of wage profile 3')
    thetaE4    $\theta_{t,4,E}$            (long_name='Household Wealth in period t at age E of wage profile 4')
    thetaE5    $\theta_{t,5,E}$            (long_name='Household Wealth in period t at age E of wage profile 5')
    thetaE6    $\theta_{t,6,E}$            (long_name='Household Wealth in period t at age E of wage profile 6')
    thetaE7    $\theta_{t,7,E}$            (long_name='Household Wealth in period t at age E of wage profile 7')
    thetaF     $\theta_{t,j,F}$            (long_name='Household Wealth in period t')
    thetaF1    $\theta_{t,1,F}$            (long_name='Household Wealth in period t at age F of wage profile 1')
    thetaF2    $\theta_{t,2,F}$            (long_name='Household Wealth in period t at age F of wage profile 2')
    thetaF3    $\theta_{t,3,F}$            (long_name='Household Wealth in period t at age F of wage profile 3')
    thetaF4    $\theta_{t,4,F}$            (long_name='Household Wealth in period t at age F of wage profile 4')
    thetaF5    $\theta_{t,5,F}$            (long_name='Household Wealth in period t at age F of wage profile 5')
    thetaF6    $\theta_{t,6,F}$            (long_name='Household Wealth in period t at age F of wage profile 6')
    thetaF7    $\theta_{t,7,F}$            (long_name='Household Wealth in period t at age F of wage profile 7')
    thetaM     $\theta_{t,j,M}$            (long_name='Household Wealth in period t')
    thetaM1	   $\theta_{t,1,M}$	           (long_name='Household Wealth in period t at age M of wage profile 1')					
    thetaM2    $\theta_{t,2,M}$	           (long_name='Household Wealth in period t at age M of wage profile 2')					
    thetaM3	   $\theta_{t,3,M}$	           (long_name='Household Wealth in period t at age M of wage profile 3')					
    thetaM4	   $\theta_{t,4,M}$	           (long_name='Household Wealth in period t at age M of wage profile 4')					
    thetaM5	   $\theta_{t,5,M}$	           (long_name='Household Wealth in period t at age M of wage profile 5')					
    thetaM6	   $\theta_{t,6,M}$	           (long_name='Household Wealth in period t at age M of wage profile 6')					
    thetaM7	   $\theta_{t,7,M}$	           (long_name='Household Wealth in period t at age M of wage profile 7')					
    thetaP     $\theta_{t,j,P}$            (long_name='Household Wealth in period t ate age P')
    thetaP1    $\theta_{t,1,P}$	           (long_name='Household Wealth in period t at age P of wage profile 1')
    thetaP2	   $\theta_{t,2,P}$	           (long_name='Household Wealth in period t at age P of wage profile 2')
    thetaP3	   $\theta_{t,3,P}$	           (long_name='Household Wealth in period t at age P of wage profile 3')
    thetaP4	   $\theta_{t,4,P}$	           (long_name='Household Wealth in period t at age P of wage profile 4')
    thetaP5	   $\theta_{t,5,P}$	           (long_name='Household Wealth in period t at age P of wage profile 5')
    thetaP6	   $\theta_{t,6,P}$	           (long_name='Household Wealth in period t at age P of wage profile 6')
    thetaP7    $\theta_{t,7,P}$	           (long_name='Household Wealth in period t at age P of wage profile 7')
    thetaR     $\theta_{t,j,R}$            (long_name='Household Wealth in period t at age R')
    thetaR1	   $\theta_{t,1,R}$	           (long_name='Household Wealth in period t at age R of wage profile 1')
    thetaR2	   $\theta_{t,2,R}$	           (long_name='Household Wealth in period t at age R of wage profile 2')
    thetaR3	   $\theta_{t,3,R}$	           (long_name='Household Wealth in period t at age R of wage profile 3')
    thetaR4	   $\theta_{t,4,R}$	           (long_name='Household Wealth in period t at age R of wage profile 4')
    thetaR5	   $\theta_{t,5,R}$	           (long_name='Household Wealth in period t at age R of wage profile 5')
    thetaR6	   $\theta_{t,6,R}$	           (long_name='Household Wealth in period t at age R of wage profile 6')
    thetaR7	   $\theta_{t,7,R}$	           (long_name='Household Wealth in period t at age R of wage profile 7')
    wthetaE1
wthetaE2
wthetaE3
wthetaE4
wthetaE5
wthetaE6
wthetaE7
wthetaF1
wthetaF2
wthetaF3
wthetaF4
wthetaF5
wthetaF6
wthetaF7
wthetaM1
wthetaM2
wthetaM3
wthetaM4
wthetaM5
wthetaM6
wthetaM7
wthetaP1
wthetaP2
wthetaP3
wthetaP4
wthetaP5
wthetaP6
wthetaP7
wthetaR1
wthetaR2
wthetaR3
wthetaR4
wthetaR5
wthetaR6
wthetaR7
tauwTheta
wTheta
tautw1
tautw2
tautw3
tautw4
tautw5
wthetaE
wthetaF
wthetaM
wthetaP
wthetaR

    S          $S_{t}$                     (long_name='Aggregate Savings')
    sE         $s_{t,j,E}$                 (long_name='household savings in period t at age E')
    sE1	       $s_{t,1,E}$	               (long_name='household savings in period t at age E of wage profile 1')					
    sE2	       $s_{t,2,E}$	               (long_name='household savings in period t at age E of wage profile 2')					
    sE3	       $s_{t,3,E}$	               (long_name='household savings in period t at age E of wage profile 3')					
    sE4        $s_{t,4,E}$             	   (long_name='household savings in period t at age E of wage profile 4')					
    sE5	       $s_{t,5,E}$	               (long_name='household savings in period t at age E of wage profile 5')					
    sE6	       $s_{t,6,E}$	               (long_name='household savings in period t at age E of wage profile 6')					
    sE7	       $s_{t,7,E}$	               (long_name='household savings in period t at age E of wage profile 7')					
    sF         $s_{t,j,F}$                 (long_name='household savings in period t at age F')
    sF1	       $s_{t,1,F}$	               (long_name='household savings in period t at age F of wage profile 1')					
    sF2	       $s_{t,2,F}$	               (long_name='household savings in period t at age F of wage profile 2')					
    sF3	       $s_{t,3,F}$	               (long_name='household savings in period t at age F of wage profile 3')					
    sF4	       $s_{t,4,F}$	               (long_name='household savings in period t at age F of wage profile 4')					
    sF5	       $s_{t,5,F}$	               (long_name='household savings in period t at age F of wage profile 5')					
    sF6	       $s_{t,6,F}$	               (long_name='household savings in period t at age F of wage profile 6')					
    sF7    	   $s_{t,7,F}$	               (long_name='household savings in period t at age F of wage profile 7')					
    sM         $s_{t,j,M}$                 (long_name='household savings in period t at age M')
    sM1	       $s_{t,1,M}$	               (long_name='household savings in period t at age M of wage profile 1')					
    sM2        $s_{t,2,M}$	               (long_name='household savings in period t at age M of wage profile 2')					
    sM3	       $s_{t,3,M}$	               (long_name='household savings in period t at age M of wage profile 3')					
    sM4	       $s_{t,4,M}$	               (long_name='household savings in period t at age M of wage profile 4')					
    sM5	       $s_{t,5,M}$	               (long_name='household savings in period t at age M of wage profile 5')					
    sM6    	   $s_{t,6,M}$	               (long_name='household savings in period t at age M of wage profile 6')					
    sM7	       $s_{t,7,M}$	               (long_name='household savings in period t at age M of wage profile 7')					
    sP         $s_{t,j,P}$                 (long_name='household savings in period t at age P')
    sP1	       $s_{t,1,P}$	               (long_name='household savings in period t at age P of wage profile 1')
    sP2	       $s_{t,2,P}$	               (long_name='household savings in period t at age P of wage profile 2')
    sP3	       $s_{t,3,P}$	               (long_name='household savings in period t at age P of wage profile 3')
    sP4	       $s_{t,4,P}$	               (long_name='household savings in period t at age P of wage profile 4')
    sP5	       $s_{t,5,P}$	               (long_name='household savings in period t at age P of wage profile 5')
    sP6	       $s_{t,6,P}$	               (long_name='household savings in period t at age P of wage profile 6')
    sP7	       $s_{t,7,P}$	               (long_name='household savings in period t at age P of wage profile 7')
    X          $X_{t}$                     (long_name='Aggregate Intergenerational Household Transfers')
    xE         $x_{t,j,E}$                 (long_name='Intergenerational Household Transfers at period t at age E')
    xE1	       $x_{t,1,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 1')		
    xE2	       $x_{t,2,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 2')		
    xE3	       $x_{t,3,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 3')		
    xE4	       $x_{t,4,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 4')		
    xE5	       $x_{t,5,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 5')		
    xE6	       $x_{t,6,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 6')		
    xE7	       $x_{t,7,E}$	               (long_name='Intergenerational Household Transfers at period t at age E of wage profile 7')		
    xF         $x_{t,j,F$                  (long_name='Intergenerational Household Transfers at period t at age F')
    xF1	       $x_{t,1,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 1')
    xF2	       $x_{t,2,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 2')
    xF3	       $x_{t,3,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 3')
    xF4	       $x_{t,4,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 4')
    xF5	       $x_{t,5,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 5')
    xF6	       $x_{t,6,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 6')
    xF7	       $x_{t,7,F}$	               (long_name='Intergenerational Household Transfers at period t at age F of wage profile 7')
    xM         $x_{t,j,M}$                 (long_name='Intergenerational Household Transfers at period t at age M')
    xM1	       $x_{t,1,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 1')
    xM2	       $x_{t,2,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 2')
    xM3	       $x_{t,3,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 3')
    xM4	       $x_{t,4,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 4')
    xM5	       $x_{t,5,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 5')
    xM6	       $x_{t,6,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 6')
    xM7	       $x_{t,7,M}$	               (long_name='Intergenerational Household Transfers at period t at age M of wage profile 7')
    xP         $x_{t,j,P}$                 (long_name='Intergenerational Household Transfers at period t at age P')
    xP1	       $x_{t,1,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 1')
    xP2	       $x_{t,2,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 2')
    xP3	       $x_{t,3,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 3')
    xP4	       $x_{t,4,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 4')
    xP5	       $x_{t,5,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 5')
    xP6	       $x_{t,6,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 6')
    xP7	       $x_{t,7,P}$	               (long_name='Intergenerational Household Transfers at period t at age P of wage profile 7')
    xR         $x_{t,j,R}$                 (long_name='Intergenerational Household Transfers at period t at age R')
    xR1	       $x_{t,1,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 1')
    xR2	       $x_{t,2,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 2')
    xR3	       $x_{t,3,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 3')
    xR4	       $x_{t,4,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 4')
    xR5	       $x_{t,5,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 5')
    xR6	       $x_{t,6,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 6')
    xR7	       $x_{t,7,R}$	               (long_name='Intergenerational Household Transfers at period t at age R of wage profile 7')
    Gg         $G_{t}^{g}$                 (long_name='Aggregate Gifts to Parents from Children')
    ggE        $g_{t,j,E}^{g}$             (long_name='Gifts to Parents from Children in period t at age E')
    ggE1	   $g_{t,1,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 1')
    ggE2	   $g_{t,2,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 2')
    ggE3	   $g_{t,3,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 3')
    ggE4	   $g_{t,4,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 4')
    ggE5	   $g_{t,5,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 5')
    ggE6	   $g_{t,6,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 6')
    ggE7	   $g_{t,7,E}^{g}$	           (long_name='Gifts to Parents from Children in period t at age E of wage profile 7')
    ggF        $g_{t,j,F}^{g}$             (long_name='Gifts to Parents from Children in period t at age F')
    ggF1	   $g_{t,1,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 1')
    ggF2	   $g_{t,2,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 2')
    ggF3	   $g_{t,3,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 3')
    ggF4	   $g_{t,4,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 4')
    ggF5	   $g_{t,5,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 5')
    ggF6	   $g_{t,6,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 6')
    ggF7	   $g_{t,7,F}^{g}$	           (long_name='Gifts to Parents from Children in period t at age F of wage profile 7')
    ggM        $g_{t,j,M}^{g}$             (long_name='Gifts to Parents from Children in period t')
    ggM1	   $g_{t,1,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 1')
    ggM2	   $g_{t,2,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 2')
    ggM3	   $g_{t,3,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 3')
    ggM4	   $g_{t,4,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 4')
    ggM5	   $g_{t,5,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 5')
    ggM6	   $g_{t,6,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 6')
    ggM7	   $g_{t,7,M}^{g}$	           (long_name='Gifts to Parents from Children in period t at age M of wage profile 7')
    Bg         $B_{t}^{g}$                 (long_name='Aggregate Bequests from Parents to Children')
    bgM        $b_{t,j,M}^{g}$             (long_name='Bequest from Parents to Children in period t at age M')
    bgM1	   $b_{t,1,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 1')
    bgM2	   $b_{t,2,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 2')
    bgM3	   $b_{t,3,M}^{g}$             (long_name='Bequests from Parents to Children in period t at age M of wage profile 3')
    bgM4	   $b_{t,4,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 4')
    bgM5	   $b_{t,5,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 5')
    bgM6	   $b_{t,6,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 6')
    bgM7	   $b_{t,7,M}^{g}$	           (long_name='Bequests from Parents to Children in period t at age M of wage profile 7')
    bgP        $b_{t,j,P}^{g}$             (long_name='Bequest from Parents to Children in period t at age P')
    bgP1	   $b_{t,1,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 1')
    bgP2	   $b_{t,2,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 2')
    bgP3	   $b_{t,3,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 3')
    bgP4	   $b_{t,4,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 4')
    bgP5	   $b_{t,5,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 5')
    bgP6	   $b_{t,6,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 6')
    bgP7	   $b_{t,7,P}^{g}$	           (long_name='Bequests from Parents to Children in period t at age P of wage profile 7')
    bgR        $b_{t,j,R}^{g}$             (long_name='Bequest from Parents to Children in period t at age R')
    bgR1	   $b_{t,1,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 1')
    bgR2	   $b_{t,2,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 2')
    bgR3	   $b_{t,3,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 3')
    bgR4	   $b_{t,4,R}^{g}$         	   (long_name='Bequests from Parents to Children in period t at age R of wage profile 4')
    bgR5	   $b_{t,5,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 5')
    bgR6	   $b_{t,6,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 6')
    bgR7	   $b_{t,7,R}^{g}$	           (long_name='Bequests from Parents to Children in period t at age R of wage profile 7')
    Gr         $G_{t}^{r}$                 (long_name='Aggregate Gifts recieived from Children to Parents')
    grM        $g_{t,j,M}^{r}$             (long_name='Gifts recieved from Children to Parents in period t at age M')
    grM1	   $g_{t,1,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 1')
    grM2	   $g_{t,2,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 2')
    grM3	   $g_{t,3,M}^{r}$             (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 3')
    grM4	   $g_{t,4,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 4')
    grM5	   $g_{t,5,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 5')
    grM6	   $g_{t,6,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 6')
    grM7	   $g_{t,7,M}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageM of wage profile 7')
    grP        $g_{t,j,P}^{r}$             (long_name='Gifts recieved from Children to Parents in period t')
    grP1	   $g_{t,1,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 1')
    grP2	   $g_{t,2,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 2')
    grP3	   $g_{t,3,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 3')
    grP4	   $g_{t,4,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 4')
    grP5	   $g_{t,5,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 5')
    grP6	   $g_{t,6,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 6')
    grP7	   $g_{t,7,P}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageP of wage profile 7')
    grR        $g_{t,j,R}^{r}$             (long_name='Gifts recieved from Children to Parents in period t')
    grR1	   $g_{t,1,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 1')
    grR2	   $g_{t,2,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 2')
    grR3	   $g_{t,3,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 3')
    grR4	   $g_{t,4,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 4')
    grR5	   $g_{t,5,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 5')
    grR6	   $g_{t,6,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 6')
    grR7	   $g_{t,7,R}^{r}$	           (long_name='Gifts recieved from Children to Parents in period t at ageR of wage profile 7')
    Br         $B_{t}^{r}$                 (long_name='Aggregate Bequests recieived from Children to Parents')
    brE        $b_{t,j,E}^{r}$             (long_name='Beqests recieved from Children to Parents in period t at age E')
    brE1	   $b_{t,1,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 1')
    brE2	   $b_{t,2,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 2')
    brE3	   $b_{t,3,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 3')
    brE4	   $b_{t,4,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 4')
    brE5	   $b_{t,5,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 5')
    brE6	   $b_{t,6,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 6')
    brE7	   $b_{t,7,E}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age E of wage profile 7')
    brF        $b_{t,j,F}^{r}$             (long_name='Beqests recieved from Children to Parents in period t at age F')
    brF1	   $b_{t,1,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 1')
    brF2	   $b_{t,2,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 2')
    brF3	   $b_{t,3,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 3')
    brF4	   $b_{t,4,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 4')
    brF5	   $b_{t,5,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 5')
    brF6	   $b_{t,6,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 6')
    brF7	   $b_{t,7,F}^{r}$	           (long_name='Beqests recieved from Children to Parents in period t at age F of wage profile 7')
    brM        $b_{t,j,M}^{r}$             (long_name='Beqests recieved from Children to Parents in period t at age M')
    brM1	   $b_{t,1,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 1')
    brM2	   $b_{t,2,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 2')
    brM3	   $b_{t,3,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 3')
    brM4	   $b_{t,4,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 4')
    brM5	   $b_{t,5,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 5')
    brM6	   $b_{t,6,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 6')
    brM7	   $b_{t,7,M}^{r}$			   (long_name='Beqests recieved from Children to Parents in period t at age M of wage profile 7')
    Omega      $\Omega_{t}$                (long_name='Aggregate Defined Contirbution Assets')
    omegaE     $\omega_{t,j,E}$            (long_name='Defined Contribution Assets in period t at age E')
    omegaE1	   $\omega_{t,1,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 1')
    omegaE2	   $\omega_{t,2,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 2')
    omegaE3	   $\omega_{t,3,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 3')
    omegaE4	   $\omega_{t,4,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 4')
    omegaE5	   $\omega_{t,5,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 5')
    omegaE6	   $\omega_{t,6,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 6')
    omegaE7	   $\omega_{t,7,E}$	           (long_name='Defined Contribution Assets in period t at age E of wage profile 7')
    omegaF     $\omega_{t,j,F}$            (long_name='Defined Contribution Assets in period t at age F')
    omegaF1	   $\omega_{t,1,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 1')
    omegaF2	   $\omega_{t,2,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 2')
    omegaF3	   $\omega_{t,3,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 3')
    omegaF4	   $\omega_{t,4,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 4')
    omegaF5	   $\omega_{t,5,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 5')
    omegaF6	   $\omega_{t,6,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 6')
    omegaF7	   $\omega_{t,7,F}$	           (long_name='Defined Contribution Assets in period t at age F of wage profile 7')
    omegaM     $\omega_{t,j,M}$            (long_name='Defined Contribution Assets in period t at age M')
    omegaM1	   $\omega_{t,1,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 1')
    omegaM2    $\omega_{t,2,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 2')
    omegaM3	   $\omega_{t,3,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 3')
    omegaM4	   $\omega_{t,4,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 4')
    omegaM5	   $\omega_{t,5,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 5')
    omegaM6	   $\omega_{t,6,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 6')
    omegaM7	   $\omega_{t,7,M}$	           (long_name='Defined Contribution Assets in period t at age M of wage profile 7')
    omegaP     $\omega_{t,j,P}$            (long_name='Defined Contribution Assets in period t at age P')
    omegaP1	   $\omega_{t,1,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 1')
    omegaP2	   $\omega_{t,2,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 2')
    omegaP3	   $\omega_{t,3,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 3')
    omegaP4	   $\omega_{t,4,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 4')
    omegaP5	   $\omega_{t,5,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 5')
    omegaP6	   $\omega_{t,6,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 6')
    omegaP7	   $\omega_{t,7,P}$	           (long_name='Defined Contribution Assets in period t at age P of wage profile 7')
    omegaR     $\omega_{t,j,R}$            (long_name='Defined Contribution Assets in period t at age R')
    omegaR1	   $\omega_{t,1,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 1')
    omegaR2	   $\omega_{t,2,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 2')
    omegaR3	   $\omega_{t,3,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 3')
    omegaR4	   $\omega_{t,4,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 4')
    omegaR5	   $\omega_{t,5,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 5')
    omegaR6	   $\omega_{t,6,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 6')
    omegaR7	   $\omega_{t,7,R}$	           (long_name='Defined Contribution Assets in period t at age R of wage profile 7')
    bendb1     $ben_{t,1,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb2     $ben_{t,2,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb3     $ben_{t,3,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb4     $ben_{t,4,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb5     $ben_{t,5,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb6     $ben_{t,6,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    bendb7     $ben_{t,7,R}^{db}$          (long_name='Defined Benefit benefits paid in period t')
    Psi        $\Psi_{t}$                  (long_name='Aggregate Defined Benefit Assets')
    psiE       $\psi_{t,j,E}$              (long_name='Defined Benefit Assets in period t at age E')
    psiE1	   $\psi_{t,1,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 1')
    psiE2	   $\psi_{t,2,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 2')
    psiE3	   $\psi_{t,3,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 3')
    psiE4	   $\psi_{t,4,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 4')
    psiE5	   $\psi_{t,5,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 5')
    psiE6	   $\psi_{t,6,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 6')
    psiE7	   $\psi_{t,7,E}$	           (long_name='Defined Benefit Assets in period t at age E of wage profile 7')
    psiF       $\psi_{t,j,F}$              (long_name='Defined Benefit Assets in period t at age F')
    psiF1	   $\psi_{t,1,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 1')
    psiF2	   $\psi_{t,2,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 2')
    psiF3	   $\psi_{t,3,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 3')
    psiF4	   $\psi_{t,4,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 4')
    psiF5	   $\psi_{t,5,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 5')
    psiF6	   $\psi_{t,6,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 6')
    psiF7	   $\psi_{t,7,F}$	           (long_name='Defined Benefit Assets in period t at age F of wage profile 7')
    psiM       $\psi_{t,j,M}$              (long_name='Defined Benefit Assets in period t at age M')
    psiM1	   $\psi_{t,1,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 1')
    psiM2	   $\psi_{t,2,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 2')
    psiM3	   $\psi_{t,3,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 3')
    psiM4	   $\psi_{t,4,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 4')
    psiM5	   $\psi_{t,5,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 5')
    psiM6	   $\psi_{t,6,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 6')
    psiM7	   $\psi_{t,7,M}$	           (long_name='Defined Benefit Assets in period t at age M of wage profile 7')
    psiP       $\psi_{t,j,P}$              (long_name='Defined Benefit Assets in period t at age P')
    psiP1	   $\psi_{t,1,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 1')
    psiP2	   $\psi_{t,2,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 2')
    psiP3	   $\psi_{t,3,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 3')
    psiP4	   $\psi_{t,4,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 4')
    psiP5	   $\psi_{t,5,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 5')
    psiP6	   $\psi_{t,6,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 6')
    psiP7	   $\psi_{t,7,P}$	           (long_name='Defined Benefit Assets in period t at age P of wage profile 7')
    psiR       $\psi_{t,j,R}$              (long_name='Defined Benefit Assets in period t at age R')
    psiR1	   $\psi_{t,1,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 1')
    psiR2	   $\psi_{t,2,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 2')
    psiR3	   $\psi_{t,3,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 3')
    psiR4	   $\psi_{t,4,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 4')
    psiR5	   $\psi_{t,5,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 5')
    psiR6	   $\psi_{t,6,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 6')
    psiR7	   $\psi_{t,7,R}$	           (long_name='Defined Benefit Assets in period t at age R of wage profile 7')
    condbE     $con_{t,j,E}^{db}$          (long_name='Defined Benefit Contributions to Retirement Assets in period t at age E')
    condbE1	   $con_{t,1,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 1')
    condbE2	   $con_{t,2,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 2')
    condbE3	   $con_{t,3,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 3')
    condbE4	   $con_{t,4,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 4')
    condbE5	   $con_{t,5,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 5')
    condbE6	   $con_{t,6,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 6')
    condbE7	   $con_{t,7,E}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 7')
    condbF     $con_{t,j,F}^{db}$          (long_name='Defined Benefit Contributions to Retirement Assets in period t at age F')
    condbF1	   $con_{t,1,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 1')
    condbF2	   $con_{t,2,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 2')
    condbF3	   $con_{t,3,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 3')
    condbF4	   $con_{t,4,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 4')
    condbF5	   $con_{t,5,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 5')
    condbF6	   $con_{t,6,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 6')
    condbF7	   $con_{t,7,F}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 7')
    condbM     $con_{t,j,M}^{db}$          (long_name='Defined Benefit Contributions to Retirement Assets in period t at age M')
    condbM1	   $con_{t,1,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 1')
    condbM2	   $con_{t,2,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 2')
    condbM3	   $con_{t,3,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 3')
    condbM4	   $con_{t,4,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 4')
    condbM5	   $con_{t,5,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 5')
    condbM6	   $con_{t,6,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 6')
    condbM7	   $con_{t,7,M}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 7')
    condbP     $con_{t,j,P}^{db}$          (long_name='Defined Benefit Contributions to Retirement Assets in period t at age P')
    condbP1	   $con_{t,1,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 1')
    condbP2	   $con_{t,2,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 2')
    condbP3	   $con_{t,3,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 3')
    condbP4	   $con_{t,4,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 4')
    condbP5	   $con_{t,5,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 5')
    condbP6	   $con_{t,6,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 6')
    condbP7	   $con_{t,7,P}^{db}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 7')
    condcE     $con_{t,j,E}^{dc}$          (long_name='Defined Contribution Contributions to Retirement Assets in period t at age E')
    condcE1	   $con_{t,1,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 1')
    condcE2	   $con_{t,2,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 2')
    condcE3	   $con_{t,3,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 3')
    condcE4	   $con_{t,4,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 4')
    condcE5	   $con_{t,5,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 5')
    condcE6	   $con_{t,6,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 6')
    condcE7	   $con_{t,7,E}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageE of wage profile 7')
    condcF     $con_{t,j,F}^{dc}$          (long_name='Defined Contribution Contributions to Retirement Assets in period t at age F')
    condcF1	   $con_{t,1,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 1')
    condcF2	   $con_{t,2,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 2')
    condcF3	   $con_{t,3,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 3')
    condcF4	   $con_{t,4,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 4')
    condcF5	   $con_{t,5,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 5')
    condcF6	   $con_{t,6,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 6')
    condcF7	   $con_{t,7,F}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageF of wage profile 7')
    condcM     $con_{t,j,M}^{dc}$          (long_name='Defined Contribution Contributions to Retirement Assets in period t at age M')
    condcM1	   $con_{t,1,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 1')
    condcM2	   $con_{t,2,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 2')
    condcM3	   $con_{t,3,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 3')
    condcM4	   $con_{t,4,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 4')
    condcM5	   $con_{t,5,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 5')
    condcM6	   $con_{t,6,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 6')
    condcM7	   $con_{t,7,M}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageM of wage profile 7')
    condcP     $con_{t,j,P}^{dc}$          (long_name='Defined Contribution Contributions to Retirement Assets in period t at age P')
    condcP1	   $con_{t,1,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 1')
    condcP2	   $con_{t,2,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 2')
    condcP3	   $con_{t,3,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 3')
    condcP4	   $con_{t,4,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 4')
    condcP5	   $con_{t,5,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 5')
    condcP6	   $con_{t,6,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 6')
    condcP7	   $con_{t,7,P}^{dc}$	       (long_name='Defined Benefit Contributions to Retirement Assets in period t at ageP of wage profile 7')
    Taut       $T_{t}$                     (long_name='Aggregate Transfers to households in period t')
    tautE      $\tau_{t,j,E}^{t}$          (long_name='Transfer to household in period t at age E')
    tautE1	   $\tau_{t,1,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 1')
    tautE2	   $\tau_{t,2,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 2')
    tautE3	   $\tau_{t,3,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 3')
    tautE4	   $\tau_{t,4,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 4')
    tautE5	   $\tau_{t,5,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 5')
    tautE6	   $\tau_{t,6,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 6')
    tautE7	   $\tau_{t,7,E}^{t}$	       (long_name='Transfer to household in period t at ageE of wage profile 7')
    tautF      $\tau_{t,j,F}^{t}$          (long_name='Transfer to household in period t at age F')
    tautF1	   $\tau_{t,1,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 1')
    tautF2	   $\tau_{t,2,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 2')
    tautF3	   $\tau_{t,3,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 3')
    tautF4	   $\tau_{t,4,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 4')
    tautF5	   $\tau_{t,5,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 5')
    tautF6	   $\tau_{t,6,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 6')
    tautF7	   $\tau_{t,7,F}^{t}$	       (long_name='Transfer to household in period t at ageF of wage profile 7')
    tautM      $\tau_{t,j,M}^{t}$          (long_name='Transfer to household in period t at age M')
    tautM1	   $\tau_{t,1,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 1')
    tautM2	   $\tau_{t,2,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 2')
    tautM3	   $\tau_{t,3,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 3')
    tautM4	   $\tau_{t,4,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 4')
    tautM5	   $\tau_{t,5,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 5')
    tautM6	   $\tau_{t,6,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 6')
    tautM7	   $\tau_{t,7,M}^{t}$	       (long_name='Transfer to household in period t at ageM of wage profile 7')
    tautP      $\tau_{t,j,P}^{t}$          (long_name='Transfer to household in period t at age P')
    tautP1	   $\tau_{t,1,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 1')
    tautP2	   $\tau_{t,2,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 2')
    tautP3	   $\tau_{t,3,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 3')
    tautP4	   $\tau_{t,4,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 4')
    tautP5	   $\tau_{t,5,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 5')
    tautP6	   $\tau_{t,6,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 6')
    tautP7	   $\tau_{t,7,P}^{t}$	       (long_name='Transfer to household in period t at ageP of wage profile 7')
    tautR      $\tau_{t,j,R}^{t}$          (long_name='Transfer to household in period t at age R')  
    tautR1	   $\tau_{t,1,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 1')
    tautR2	   $\tau_{t,2,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 2')
    tautR3	   $\tau_{t,3,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 3')
    tautR4	   $\tau_{t,4,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 4')
    tautR5	   $\tau_{t,5,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 5')
    tautR6	   $\tau_{t,6,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 6')
    tautR7	   $\tau_{t,7,R}^{t}$	       (long_name='Transfer to household in period t at ageR of wage profile 7')
    RET        $RET_{t}$                   (long_name='Aggregate Retirement Assets of Households')
    retE       $ret_{t,j,E}$               (long_name='Retirement Assets of household in period t at age E ')
    retE1	   $ret_{t,1,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 1')
    retE2	   $ret_{t,2,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 2')
    retE3	   $ret_{t,3,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 3')
    retE4	   $ret_{t,4,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 4')
    retE5	   $ret_{t,5,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 5')
    retE6	   $ret_{t,6,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 6')
    retE7	   $ret_{t,7,E}$	           (long_name='Retirement Assets of household in period t at ageE of wage profile 7')
    retF       $ret_{t,j,F}$               (long_name='Retirement Assets of household in period t at age F')
    retF1	   $ret_{t,1,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 1')
    retF2	   $ret_{t,2,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 2')
    retF3	   $ret_{t,3,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 3')
    retF4	   $ret_{t,4,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 4')
    retF5	   $ret_{t,5,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 5')
    retF6	   $ret_{t,6,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 6')
    retF7	   $ret_{t,7,F}$	           (long_name='Retirement Assets of household in period t at ageF of wage profile 7')
    retM       $ret_{t,j,M}$               (long_name='Retirement Assets of household in period t at age M')
    retM1	   $ret_{t,1,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 1')
    retM2	   $ret_{t,2,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 2')
    retM3	   $ret_{t,3,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 3')
    retM4	   $ret_{t,4,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 4')
    retM5	   $ret_{t,5,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 5')
    retM6	   $ret_{t,6,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 6')
    retM7	   $ret_{t,7,M}$	           (long_name='Retirement Assets of household in period t at ageM of wage profile 7')
    retP       $ret_{t,j,P}$               (long_name='Retirement Assets of household in period t at age P')
    retP1	   $ret_{t,1,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 1')
    retP2	   $ret_{t,2,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 2')
    retP3	   $ret_{t,3,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 3')
    retP4	   $ret_{t,4,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 4')
    retP5	   $ret_{t,5,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 5')
    retP6	   $ret_{t,6,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 6')
    retP7	   $ret_{t,7,P}$	           (long_name='Retirement Assets of household in period t at ageP of wage profile 7')
    retR       $ret_{t,j,R}$               (long_name='Retirement Assets of household in period t at age R') 
    retR1	   $ret_{t,1,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 1')
    retR2	   $ret_{t,2,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 2')
    retR3	   $ret_{t,3,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 3')
    retR4	   $ret_{t,4,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 4')
    retR5	   $ret_{t,5,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 5')
    retR6	   $ret_{t,6,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 6')
    retR7	   $ret_{t,7,R}$	           (long_name='Retirement Assets of household in period t at ageR of wage profile 7')
    REV        $REV_{t}$                   (long_name='Aggregate Government Tax Revenue')
    Gbudg      $G_{t}^{budg}$              (long_name='Government Budget')
    Gt         $G_{t}$                     (long_name='Government Consumption from Revenue')
    xpreE1     $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE2 $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE3 $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE4 $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE5 $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    Xpre$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    Spost$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR1$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR2$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR3$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR4$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR5$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR6$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR7$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    Cpost$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostE$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostF$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostM$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostP$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    cpostR$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostE$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostF$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostM$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    spostP$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreE$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreF$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreM$x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreP $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    xpreR $x_{t,E,1}$                 (long_name='Pre-tax non-wage income at age E of wage profile 1')
    junk
    z
    ;

varexo L          $L_{t}$                     (long_name='Innelastic Labor Supplied by Households of age E to R-1')
 A              $A$                     (long_name='Total Factor Productivity Augmentation') 
    ;

//****************************************************************************
//Define parameters
//****************************************************************************    
parameters betaE1
betaF1
betaM1
betaP1
betaR1
betaE2
betaF2
betaM2
betaP2
betaR2
betaE3
betaF3
betaM3
betaP3
betaR3
betaE4
betaF4
betaM4
betaP4
betaR4
betaE5
betaF5
betaM5
betaP5
betaR5
betaE6
betaF6
betaM6
betaP6
betaR6
betaE7
betaF7
betaM7
betaP7
betaR7
    alpha          $\alpha$                (long_name='Capital Share of Production')
    phi            $\phi$                  (long_name='Households weight of parents utility')
    rho
    phi1
    tauc
    gamma          $\gamma$                (long_name='Households weight of parents utility')
    gamma1         $\gamma_{t,1,s}$        (long_name='Household weight of parents utility of wage profile 1')
    varepsilon     $\varepsilon$           (long_name='Constant Elasticity of Substitution between Capital and Labor')
    delta          $\delta$                (long_name='Capital Depreciation Rate')
    govtconsump    $G_{t}$                 (long_name='Government Expenditure on goods')
    tauk           $\tau_{t}^{k}$          (long_name='Tax Rate on Capital Stock')
    taucorp        $\tau_{t}^{corp}$       (long_name='Tax Rate on Firm Profits')
    taul1          $\tau_{t,1,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 1')
    taul2          $\tau_{t,2,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 2')
    taul3          $\tau_{t,3,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 3')
    taul4          $\tau_{t,4,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 4')
    taul5          $\tau_{t,5,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 5')
    taul6          $\tau_{t,6,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 6')
    taul7          $\tau_{t,7,s}^{l}$      (long_name='Tax Rate on Wages (labor) of wage profile 7')
    deltatau       $\delta_{t}^{\tau}$     (long_name='Depreciation Expense allowed to Firm')
    varrho         $\varrho_{t}$           (long_name='Population Growth Rate')
    wvarphi1
    wvarphi2
    wvarphi3
    wvarphi4
    wvarphi5
    varphiE1	   $\varphi_{t,1,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 1')
    varphiE2	   $\varphi_{t,2,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 2')
    varphiE3	   $\varphi_{t,3,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 3')
    varphiE4	   $\varphi_{t,4,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 4')
    varphiE5	   $\varphi_{t,5,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 5')
    varphiE6	   $\varphi_{t,6,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 6')
    varphiE7	   $\varphi_{t,7,E}$	   (long_name='Household share of Government Transfers at age E of wage profile 7')
    varphiF1	   $\varphi_{t,1,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 1')
    varphiF2	   $\varphi_{t,2,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 2')
    varphiF3	   $\varphi_{t,3,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 3')
    varphiF4	   $\varphi_{t,4,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 4')
    varphiF5	   $\varphi_{t,5,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 5')
    varphiF6	   $\varphi_{t,6,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 6')
    varphiF7	   $\varphi_{t,7,F}$	   (long_name='Household share of Government Transfers at age F of wage profile 7')
    varphiM1	   $\varphi_{t,1,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 1')
    varphiM2	   $\varphi_{t,2,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 2')
    varphiM3	   $\varphi_{t,3,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 3')
    varphiM4	   $\varphi_{t,4,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 4')
    varphiM5	   $\varphi_{t,5,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 5')
    varphiM6	   $\varphi_{t,6,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 6')
    varphiM7	   $\varphi_{t,7,M}$	   (long_name='Household share of Government Transfers at age M of wage profile 7')
    varphiP1	   $\varphi_{t,1,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 1')
    varphiP2	   $\varphi_{t,2,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 2')
    varphiP3	   $\varphi_{t,3,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 3')
    varphiP4	   $\varphi_{t,4,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 4')
    varphiP5	   $\varphi_{t,5,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 5')
    varphiP6	   $\varphi_{t,6,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 6')
    varphiP7	   $\varphi_{t,7,P}$	   (long_name='Household share of Government Transfers at age P of wage profile 7')
    varphiR1	   $\varphi_{t,1,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 1')
    varphiR2	   $\varphi_{t,2,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 2')
    varphiR3	   $\varphi_{t,3,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 3')
    varphiR4	   $\varphi_{t,4,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 4')
    varphiR5	   $\varphi_{t,5,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 5')
    varphiR6	   $\varphi_{t,6,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 6')
    varphiR7	   $\varphi_{t,7,R}$	   (long_name='Household share of Government Transfers at age R of wage profile 7')
    weierpdbE1
weierpdbF1
weierpdbM1
weierpdbP1
weierpdbR1
weierpdbE2
weierpdbF2
weierpdbM2
weierpdbP2
weierpdbR2
weierpdbE3
weierpdbF3
weierpdbM3
weierpdbP3
weierpdbR3
weierpdbE4
weierpdbF4
weierpdbM4
weierpdbP4
weierpdbR4
weierpdbE5
weierpdbF5
weierpdbM5
weierpdbP5
weierpdbR5
weierpdbE6
weierpdbF6
weierpdbM6
weierpdbP6
weierpdbR6
weierpdbE7
weierpdbF7
weierpdbM7
weierpdbP7
weierpdbR7
weierpdcE1
weierpdcF1
weierpdcM1
weierpdcP1
weierpdcR1
weierpdcE2
weierpdcF2
weierpdcM2
weierpdcP2
weierpdcR2
weierpdcE3
weierpdcF3
weierpdcM3
weierpdcP3
weierpdcR3
weierpdcE4
weierpdcF4
weierpdcM4
weierpdcP4
weierpdcR4
weierpdcE5
weierpdcF5
weierpdcM5
weierpdcP5
weierpdcR5
weierpdcE6
weierpdcF6
weierpdcM6
weierpdcP6
weierpdcR6
weierpdcE7
weierpdcF7
weierpdcM7
weierpdcP7
weierpdcR7
gammaM1
gammaM2
gammaM3
gammaM4
gammaM5
gammaM6
gammaM7
gammaP1
gammaP2
gammaP3
gammaP4
gammaP5
gammaP6
gammaP7
gammaR1
gammaR2
gammaR3
gammaR4
gammaR5
gammaR6
gammaR7
phiE1
phiE2
phiE3
phiE4
phiE5
phiE6
phiE7
phiF1
phiF2
phiF3
phiF4
phiF5
phiF6
phiF7
phiM1
phiM2
phiM3
phiM4
phiM5
phiM6
phiM7
    weierpdb       $\wp_{t}^{DB}$          (long_name='Household Percentage Contribution to Defined Benefit Plan')
    weierpdc       $\wp_{t}^{DC}$          (long_name='Household Percentage of Wage Contribution to Defined Contribution Plan')
    IGE            $IGE_{t}$               (long_name='Intergenerational Elasticity of Income')
    Pw             $P_{t}^{w}$             (long_name='Parental Wage Determinant')          
    wrdb           $swr_{t,j,s}^{DB}$      (long_name='Safe Withdrawl rate of Defined Benefit Assets when Retired')
    swrdc          $swr_{t,j,s}^{DC}$      (long_name='Safe Withdrawl rate of Defined Contribution Assets when Retired')
    zetadb         $\zeta_{t}^{db}$        (long_name='Scaling factor on household defined benefit contributions')
    zetadc         $\zeta_{t}^{dc}$        (long_name='Scaling factor on household defined contirbution contributions')
    zE1	           $z_{t,1,E}$	           (long_name='Population at ageE of wage profile 1')
    zE2	           $z_{t,2,E}$	           (long_name='Population at ageE of wage profile 2')
    zE3	           $z_{t,3,E}$	           (long_name='Population at ageE of wage profile 3')
    zE4	           $z_{t,4,E}$	           (long_name='Population at ageE of wage profile 4')
    zE5        	   $z_{t,5,E}$	           (long_name='Population at ageE of wage profile 5')
    zE6	           $z_{t,6,E}$	           (long_name='Population at ageE of wage profile 6')
    zE7	           $z_{t,7,E}$	           (long_name='Population at ageE of wage profile 7') 
    zF1	           $z_{t,1,F}$	           (long_name='Population at ageF of wage profile 1')
    zF2	           $z_{t,2,F}$	           (long_name='Population at ageF of wage profile 2')
    zF3	           $z_{t,3,F}$	           (long_name='Population at ageF of wage profile 3')
    zF4	           $z_{t,4,F}$	           (long_name='Population at ageF of wage profile 4')
    zF5	           $z_{t,5,F}$	           (long_name='Population at ageF of wage profile 5')
    zF6	           $z_{t,6,F}$	           (long_name='Population at ageF of wage profile 6')
    zF7	           $z_{t,7,F}$	           (long_name='Population at ageF of wage profile 7')
    zM1	           $z_{t,1,M}$	           (long_name='Population at ageM of wage profile 1')
    zM2	           $z_{t,2,M}$         	   (long_name='Population at ageM of wage profile 2')
    zM3	           $z_{t,3,M}$	           (long_name='Population at ageM of wage profile 3')
    zM4	           $z_{t,4,M}$	           (long_name='Population at ageM of wage profile 4')
    zM5	           $z_{t,5,M}$	           (long_name='Population at ageM of wage profile 5')
    zM6	           $z_{t,6,M}$	           (long_name='Population at ageM of wage profile 6')
    zM7	           $z_{t,7,M}$	           (long_name='Population at ageM of wage profile 7') 
    zP1	           $z_{t,1,P}$	           (long_name='Population at ageP of wage profile 1')
    zP2	           $z_{t,2,P}$	           (long_name='Population at ageP of wage profile 2')
    zP3	           $z_{t,3,P}$	           (long_name='Population at ageP of wage profile 3')
    zP4	           $z_{t,4,P}$	           (long_name='Population at ageP of wage profile 4')
    zP5	           $z_{t,5,P}$	           (long_name='Population at ageP of wage profile 5')
    zP6	           $z_{t,6,P}$	           (long_name='Population at ageP of wage profile 6')
    zP7	           $z_{t,7,P}$	           (long_name='Population at ageP of wage profile 7')
    zR1	           $z_{t,1,R}$	           (long_name='Population at ageR of wage profile 1')
    zR2	           $z_{t,2,R}$	           (long_name='Population at ageR of wage profile 2')
    zR3	           $z_{t,3,R}$	           (long_name='Population at ageR of wage profile 3')
    zR4	           $z_{t,4,R}$	           (long_name='Population at ageR of wage profile 4')
    zR5	           $z_{t,5,R}$	           (long_name='Population at ageR of wage profile 5')
    zR6	           $z_{t,6,R}$	           (long_name='Population at ageR of wage profile 6')
    zR7	           $z_{t,7,R}$	           (long_name='Population at ageR of wage profile 7')
    lab            $lab$                   (long_name='Innelastic Labor Supplied by Households of age E to R-1')
    lambdaE1	   $\lambda_{t,1,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 1')
    lambdaE2	   $\lambda_{t,2,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 2')
    lambdaE3	   $\lambda_{t,3,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 3')
    lambdaE4	   $\lambda_{t,4,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 4')
    lambdaE5	   $\lambda_{t,5,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 5')
    lambdaE6	   $\lambda_{t,6,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 6')
    lambdaE7	   $\lambda_{t,7,E}$	   (long_name='Share of total Wage of cohort ageE of wage profile 7')
    lambdaF1	   $\lambda_{t,1,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 1')
    lambdaF2	   $\lambda_{t,2,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 2')
    lambdaF3	   $\lambda_{t,3,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 3')
    lambdaF4	   $\lambda_{t,4,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 4')
    lambdaF5	   $\lambda_{t,5,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 5')
    lambdaF6	   $\lambda_{t,6,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 6')
    lambdaF7	   $\lambda_{t,7,F}$	   (long_name='Share of total Wage of cohort ageF of wage profile 7')
    lambdaM1	   $\lambda_{t,1,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 1')
    lambdaM2	   $\lambda_{t,2,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 2')
    lambdaM3	   $\lambda_{t,3,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 3')
    lambdaM4	   $\lambda_{t,4,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 4')
    lambdaM5	   $\lambda_{t,5,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 5')
    lambdaM6	   $\lambda_{t,6,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 6')
    lambdaM7	   $\lambda_{t,7,M}$	   (long_name='Share of total Wage of cohort ageM of wage profile 7')
    lambdaP1	   $\lambda_{t,1,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 1')
    lambdaP2	   $\lambda_{t,2,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 2')
    lambdaP3	   $\lambda_{t,3,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 3')
    lambdaP4	   $\lambda_{t,4,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 4')
    lambdaP5	   $\lambda_{t,5,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 5')
    lambdaP6	   $\lambda_{t,6,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 6')
    lambdaP7	   $\lambda_{t,7,P}$	   (long_name='Share of total Wage of cohort ageP of wage profile 7')
    n
    g
    tauw
    ;
//****************************************************************************
//Set Parameters
//****************************************************************************  
betaE1=0.993;
betaF1=0.992;
betaM1=0.991;
betaP1=0.995;
betaR1=0.997;
betaE2=0.983;
betaF2=0.982;
betaM2=0.978;
betaP2=0.987;
betaR2=0.985;
betaE3=0.96;
betaF3=0.957;
betaM3=0.953;
betaP3=0.965;
betaR3=0.962;
betaE4=0.926;
betaF4=0.922;
betaM4=0.92;
betaP4=0.937;
betaR4=0.932;
betaE5=0.891;
betaF5=0.887;
betaM5=0.882;
betaP5=0.91;
betaR5=0.896;
betaE6=0.835;
betaF6=0.83;
betaM6=0.82;
betaP6=0.85;
betaR6=0.841;
betaE7=0.765;
betaF7=0.742;
betaM7=0.7;
betaP7=0.85;
betaR7=0.8;
alpha=.25;
gammaM1=0.003;
gammaM2=0.012;
gammaM3=0.03;
gammaM4=0.09;
gammaM5=0.15;
gammaM6=1.8;
gammaM7=2.4;
gammaP1=0.015;
gammaP2=0.021;
gammaP3=0.033;
gammaP4=0.123;
gammaP5=0.165;
gammaP6=0.261;
gammaP7=0.3;
gammaR1=0.027;
gammaR2=0.03;
gammaR3=0.057;
gammaR4=0.141;
gammaR5=0.18;
gammaR6=0.3;
gammaR7=0.51;
phiE1=0.001;
phiE2=0.004;
phiE3=0.01;
phiE4=0.03;
phiE5=0.05;
phiE6=0.6;
phiE7=0.8;
phiF1=0.005;
phiF2=0.007;
phiF3=0.011;
phiF4=0.041;
phiF5=0.055;
phiF6=0.087;
phiF7=0.1;
phiM1=0.009;
phiM2=0.01;
phiM3=0.019;
phiM4=0.047;
phiM5=0.06;
phiM6=0.1;
phiM7=0.17;
rho=.9;
phi=.03;
phi1=.03;
tauc=0.0635;
tauw=.0;
gamma=.07;
gamma1=.07;
varepsilon=.87;
delta=.08;
govtconsump=.19;
tauk=.16;
taucorp=.21; 
taul1=.0959;
taul2=0.1290;
taul3=0.1831;
taul4=0.2475;
taul5=0.3156;
taul6=0.3581;
taul7=0.3629;
deltatau=.01;
varrho=.0046;
wvarphi1=.30;
wvarphi2=.25;
wvarphi3=.20;
wvarphi4=.15;
wvarphi5=.10;
varphiE1=0.000014;
varphiE2=0.00056;
varphiE3=0.00098;
varphiE4=0.0014;
varphiE5=0.0056;
varphiE6=0.0238;
varphiE7=0.1078;
varphiF1=0.000016; 
varphiF2=0.00064; 
varphiF3=0.00112; 
varphiF4=0.0016; 
varphiF5=0.0064;
varphiF6=0.0272;
varphiF7=0.1232;
varphiM1=0.000019;
varphiM2=0.00076;
varphiM3=0.00133;
varphiM4=0.0019;
varphiM5=0.0076;
varphiM6=0.0323;
varphiM7=0.1463;
varphiP1=0.000022;
varphiP2=0.00088;
varphiP3=0.00154;
varphiP4=0.0022;
varphiP5=0.0088;
varphiP6=0.0374;
varphiP7=0.1694;
varphiR1=0.000029;
varphiR2=0.00116;
varphiR3=0.00203;
varphiR4=0.0029;
varphiR5=0.0116;
varphiR6=0.0493;
varphiR7=0.2233;
weierpdbE1=0.00283783783783784;
weierpdbF1=0.00324324324324325;
weierpdbM1=0.00364864864864865;
weierpdbP1=0.004935;
weierpdbR1=0.00121621621621622;
weierpdbE2=0.0068918918918919;
weierpdbF2=0.00729729729729731;
weierpdbM2=0.00891891891891893;
weierpdbP2=0.009834;
weierpdbR2=0.00608108108108109;
weierpdbE3=0.0162162162162162;
weierpdbF3=0.0174324324324325;
weierpdbM3=0.0190540540540541;
weierpdbP3=0.020052;
weierpdbR3=0.0154054054054054;
weierpdbE4=0.03;
weierpdbF4=0.0316216216216216;
weierpdbM4=0.0324324324324324;
weierpdbP4=0.033525;
weierpdbR4=0.0275675675675676;
weierpdbE5=0.0441891891891892;
weierpdbF5=0.0458108108108108;
weierpdbM5=0.0478378378378379;
weierpdbP5=0.049695;
weierpdbR5=0.0421621621621622;
weierpdbE6=0.0668918918918919;
weierpdbF6=0.068918918918919;
weierpdbM6=0.072972972972973;
weierpdbP6=0.074634;
weierpdbR6=0.0644594594594595;
weierpdbE7=0.0952702702702703;
weierpdbF7=0.104594594594595;
weierpdbM7=0.121621621621622;
weierpdbP7=0.1246701;
weierpdbR7=0.0810810810810811;
weierpdcE1=0.00472972972972974;
weierpdcF1=0.00540540540540541;
weierpdcM1=0.00608108108108109;
weierpdcP1=0.00337837837837838;
weierpdcR1=0.00202702702702703;
weierpdcE1=0.00472972972972974;
weierpdcF1=0.00540540540540541;
weierpdcM1=0.00608108108108109;
weierpdcP1=0.008225;
weierpdcR1=0.00202702702702703;
weierpdcE2=0.0114864864864865;
weierpdcF2=0.0121621621621622;
weierpdcM2=0.0148648648648649;
weierpdcP2=0.01639;
weierpdcR2=0.0101351351351352;
weierpdcE3=0.0270270270270271;
weierpdcF3=0.0290540540540541;
weierpdcM3=0.0317567567567568;
weierpdcP3=0.03342;
weierpdcR3=0.0256756756756757;
weierpdcE4=0.05;
weierpdcF4=0.0527027027027027;
weierpdcM4=0.0540540540540541;
weierpdcP4=0.055875;
weierpdcR4=0.0459459459459459;
weierpdcE5=0.0736486486486487;
weierpdcF5=0.0763513513513514;
weierpdcM5=0.0797297297297298;
weierpdcP5=0.082825;
weierpdcR5=0.0702702702702703;
weierpdcE6=0.111486486486487;
weierpdcF6=0.114864864864865;
weierpdcM6=0.121621621621622;
weierpdcP6=0.12439;
weierpdcR6=0.107432432432433;
weierpdcE7=0.158783783783784;
weierpdcF7=0.174324324324324;
weierpdcM7=0.202702702702703;
weierpdcP7=0.2077835;
weierpdcR7=0.135135135135135;
IGE=.4;
Pw=1.0;
wrdb=.02;
swrdc=.04;
zetadb=.282;
zetadc=.638;
zE1=0.0597142305955902;
zE2=0.022119517657222;
zE3=0.00999993977159027;
zE4=0.00284796277535981;
zE5=0.00133190119278124;
zE6=0.000265733250092364;
zE7=2.89009531907856E-05;
zF1=0.251297387089775;
zF2=0.0930863034741425;
zF3=0.0420830798721091;
zF4=0.0119851766796392;
zF5=0.00560508418628774;
zF6=0.0011182940941387;
zF7=0.000121624844677889;
zM1=0.0920594388348682;
zM2=0.0341009230548839;
zM3=0.015416573814535;
zM4=0.00439060927867971;
zM5=0.00205334767220442;
zM6=0.000409672093892395;
zM7=4.45556361691278E-05;
zP1=0.121667744838515;
zP2=0.0450685172265898;
zP3=0.0203748772846152;
zP4=0.00580272415479562;
zP5=0.00271374868029179;
zP6=0.000541431497063192;
zP7=5.88856921262256E-05;
zR1=0.095293959658796;
zR2=0.0352990635946501;
zR3=0.0159582372188295;
zR4=0.0045448739290117;
zR5=0.00212549232014674;
zR6=0.000424065978272398;
zR7=0.000046121104466962;
lambdaE1=0.000715337139440487;
lambdaE2=0.00155300432176486;
lambdaE3=0.00303993587095183;
lambdaE4=0.00561389329634598;
lambdaE5=0.0131829814393483;
lambdaE6=0.061583932655037;
lambdaE7=0.11040898197889;
lambdaF1=0.000720374880501728;
lambdaF2=0.00197990833960928;
lambdaF3=0.00413380552808001;
lambdaF4=0.00766995973023856;
lambdaF5=0.0175873549684394;
lambdaF6=0.0777884218033762;
lambdaF7=0.134395080038186;
lambdaM1=0.000772293201783766;
lambdaM2=0.00229826078695363;
lambdaM3=0.00476038440173941;
lambdaM4=0.0087798921923066;
lambdaM5=0.0199802897953073;
lambdaM6=0.0912170896277818;
lambdaM7=0.150459932566709;
lambdaP1=0.000792513545407478;
lambdaP2=0.00235210666895758;
lambdaP3=0.00484162708123959;
lambdaP4=0.0088964071477459;
lambdaP5=0.0203077323989276;
lambdaP6=0.0938786668469383;
lambdaP7=0.150289831747993;
n=.0046;
g=0.0002;



model;

z= A ;

Y = exp(z)*((K(-1)^alpha)*(L^(1-alpha)));

R = (1-taucorp)*(((exp(z))*(alpha*((L/K(-1))^1-alpha))));

W = exp(z)*(((1-alpha)*((K(-1)/L)^alpha)));

Pi=(1-taucorp)*(Y-(W*L));

wE1=lambdaE1*((1-taul1)*W);

wE2=lambdaE2*((1-taul2)*W);

wE3=lambdaE3*((1-taul3)*W);

wE4=lambdaE4*((1-taul4)*W);

wE5=lambdaE5*((1-taul5)*W);

wE6=lambdaE6*((1-taul6)*W);

wE7=lambdaE7*((1-taul7)*W);

wF1=lambdaF1*((1-taul1)*W);

wF2=lambdaF2*((1-taul2)*W);

wF3=lambdaF3*((1-taul3)*W);

wF4=lambdaF4*((1-taul4)*W);

wF5=lambdaF5*((1-taul5)*W);

wF6=lambdaF6*((1-taul6)*W);

wF7=lambdaF7*((1-taul7)*W);

wM1=lambdaM1*((1-taul1)*W);

wM2=lambdaM2*((1-taul2)*W);

wM3=lambdaM3*((1-taul3)*W);

wM4=lambdaM4*((1-taul4)*W);

wM5=lambdaM5*((1-taul5)*W);

wM6=lambdaM6*((1-taul6)*W);

wM7=lambdaM7*((1-taul7)*W);

wP1=lambdaP1*((1-taul1)*W);

wP2=lambdaP2*((1-taul2)*W);

wP3=lambdaP3*((1-taul3)*W);

wP4=lambdaP4*((1-taul4)*W);

wP5=lambdaP5*((1-taul5)*W);

wP6=lambdaP6*((1-taul6)*W);

wP7=lambdaP7*((1-taul7)*W);

wE=wE1+wE2+wE3+wE4+wE5+wE6+wE7;

wF=wF1+wF2+wF3+wF4+wF5+wF6+wF7;

wM=wM1+wM2+wM3+wM4+wM5+wM6+wM7;

wP=wP1+wP2+wP3+wP4+wP5+wP6+wP7;

WPost=wE+wF+wM+wP;

sE1=(1-betaE1)*(wE1);

sE2=(1-betaE2)*(wE2);

sE3=(1-betaE3)*(wE3);

sE4=(1-betaE4)*(wE4);

sE5=(1-betaE5)*(wE5);

sE6=(1-betaE6)*(wE6);

sE7=(1-betaE7)*(wE7);

sF1=(1-betaF1)*(wF1);

sF2=(1-betaF2)*(wF2);

sF3=(1-betaF3)*(wF3);

sF4=(1-betaF4)*(wF4);

sF5=(1-betaF5)*(wF5);

sF6=(1-betaF6)*(wF6);

sF7=(1-betaF7)*(wF7);

sM1=(1-betaM1)*(wM1);

sM2=(1-betaM2)*(wM2);

sM3=(1-betaM3)*(wM3);

sM4=(1-betaM4)*(wM4);

sM5=(1-betaM5)*(wM5);

sM6=(1-betaM6)*(wM6);

sM7=(1-betaM7)*(wM7);

sP1=(1-betaP1)*(wP1);

sP2=(1-betaP2)*(wP2);

sP3=(1-betaP3)*(wP3);

sP4=(1-betaP4)*(wP4);

sP5=(1-betaP5)*(wP5);

sP6=(1-betaP6)*(wP6);

sP7=(1-betaP7)*(wP7);

sE = sE1 + sE2 + sE3 + sE4 + sE5 + sE6 + sE7;

sF = sF1 + sF2 + sF3 + sF4 + sF5 + sF6 + sF7;

sM = sM1 + sM2 + sM3 + sM4 + sM5 + sM6 + sM7;

sP = sP1 + sP2 + sP3 + sP4 + sP5 + sP6 + sP7;

S = sE + sF + sM + sP;

spostE1=(1-tauk)*((1-betaE1)*(wE1));

spostE2=(1-tauk)*((1-betaE2)*(wE2));

spostE3=(1-tauk)*((1-betaE3)*(wE3));

spostE4=(1-tauk)*((1-betaE4)*(wE4));

spostE5=(1-tauk)*((1-betaE5)*(wE5));

spostE6=(1-tauk)*((1-betaE6)*(wE6));

spostE7=(1-tauk)*((1-betaE7)*(wE7));

spostF1=(1-tauk)*((1-betaF1)*(wF1));

spostF2=(1-tauk)*((1-betaF2)*(wF2));

spostF3=(1-tauk)*((1-betaF3)*(wF3));

spostF4=(1-tauk)*((1-betaF4)*(wF4));

spostF5=(1-tauk)*((1-betaF5)*(wF5));

spostF6=(1-tauk)*((1-betaF6)*(wF6));

spostF7=(1-tauk)*((1-betaF7)*(wF7));

spostM1=(1-tauk)*((1-betaM1)*(wM1));

spostM2=(1-tauk)*((1-betaM2)*(wM2));

spostM3=(1-tauk)*((1-betaM3)*(wM3));

spostM4=(1-tauk)*((1-betaM4)*(wM4));

spostM5=(1-tauk)*((1-betaM5)*(wM5));

spostM6=(1-tauk)*((1-betaM6)*(wM6));

spostM7=(1-tauk)*((1-betaM7)*(wM7));

spostP1=(1-tauk)*((1-betaP1)*(wP1));

spostP2=(1-tauk)*((1-betaP2)*(wP2));

spostP3=(1-tauk)*((1-betaP3)*(wP3));

spostP4=(1-tauk)*((1-betaP4)*(wP4));

spostP5=(1-tauk)*((1-betaP5)*(wP5));

spostP6=(1-tauk)*((1-betaP6)*(wP6));

spostP7=(1-tauk)*((1-betaP7)*(wP7));

spostE = spostE1 + spostE2 + spostE3 + spostE4 + spostE5 + spostE6 + spostE7;

spostF = spostF1 + spostF2 + spostF3 + spostF4 + spostF5 + spostF6 + spostF7;

spostM = spostM1 + spostM2 + spostM3 + spostM4 + spostM5 + spostM6 + spostM7;

spostP = spostP1 + spostP2 + spostP3 + spostP4 + spostP5 + spostP6 + spostP7;

Spost = spostE + spostF + spostM + spostP;

condcE1=zetadc*((weierpdcE1*wE1));

condcE2=zetadc*((weierpdcE2*wE2));

condcE3=zetadc*((weierpdcE3*wE3));

condcE4=zetadc*((weierpdcE4*wE4));

condcE5=zetadc*((weierpdcE5*wE5));

condcE6=zetadc*((weierpdcE6*wE6));

condcE7=zetadc*((weierpdcE7*wE7));

condcF1=zetadc*((weierpdcF1*wF1));

condcF2=zetadc*((weierpdcF2*wF2));

condcF3=zetadc*((weierpdcF3*wF3));

condcF4=zetadc*((weierpdcF4*wF4));

condcF5=zetadc*((weierpdcF5*wF5));

condcF6=zetadc*((weierpdcF6*wF6));

condcF7=zetadc*((weierpdcF7*wF7));

condcM1=zetadc*((weierpdcM1*wM1));

condcM2=zetadc*((weierpdcM2*wM2));

condcM3=zetadc*((weierpdcM3*wM3));

condcM4=zetadc*((weierpdcM4*wM4));

condcM5=zetadc*((weierpdcM5*wM5));

condcM6=zetadc*((weierpdcM6*wM6));

condcM7=zetadc*((weierpdcM7*wM7));

condcP1=zetadc*((weierpdcP1*wP1));

condcP2=zetadc*((weierpdcP2*wP2));

condcP3=zetadc*((weierpdcP3*wP3));

condcP4=zetadc*((weierpdcP4*wP4));

condcP5=zetadc*((weierpdcP5*wP5));

condcP6=zetadc*((weierpdcP6*wP6));

condcP7=zetadc*((weierpdcP7*wP7));

condcE = condcE1+condcE2+condcE3+condcE4+condcE5+condcE6+condcE7;

condcF = condcF1+condcF2+condcF3+condcF4+condcF5+condcF6+condcF7;

condcM = condcM1+condcM2+condcM3+condcM4+condcM5+condcM6+condcM7;

condcP = condcP1+condcP2+condcP3+condcP4+condcP5+condcP6+condcP7;

condbE1=zetadb*((weierpdbE1*((wE1)+(taul1*wE1))));	

condbE2=zetadb*((weierpdbE2*((wE2)+(taul2*wE2))));	

condbE3=zetadb*((weierpdbE3*((wE3)+(taul3*wE3))));	

condbE4=zetadb*((weierpdbE4*((wE4)+(taul4*wE4))));

condbE5=zetadb*((weierpdbE5*((wE5)+(taul5*wE5))));	

condbE6=zetadb*((weierpdbE6*((wE6)+(taul6*wE6))));	

condbE7=zetadb*((weierpdbE7*((wE7)+(taul7*wE7))));	

condbF1=zetadb*((weierpdbF1*((wF1)+(taul1*wF1))));

condbF2=zetadb*((weierpdbF2*((wF2)+(taul2*wF2))));	

condbF3=zetadb*((weierpdbF3*((wF3)+(taul3*wF3))));	

condbF4=zetadb*((weierpdbF4*((wF4)+(taul4*wF4))));	

condbF5=zetadb*((weierpdbF5*((wF5)+(taul5*wF5))));	

condbF6=zetadb*((weierpdbF6*((wF6)+(taul6*wF6))));	

condbF7=zetadb*((weierpdbF7*((wF7)+(taul7*wF7))));	

condbM1=zetadb*((weierpdbM1*((wM1)+(taul1*wM1))));	

condbM2=zetadb*((weierpdbM2*((wM2)+(taul2*wM2))));	

condbM3=zetadb*((weierpdbM3*((wM3)+(taul3*wM3))));	

condbM4=zetadb*((weierpdbM4*((wM4)+(taul4*wM4))));	

condbM5=zetadb*((weierpdbM5*((wM5)+(taul5*wM5))));	

condbM6=zetadb*((weierpdbM6*((wM6)+(taul6*wM6))));	

condbM7=zetadb*((weierpdbM7*((wM7)+(taul7*wM7))));	

condbP1=zetadb*((weierpdbP1*((wP1)+(taul1*wP1))));	

condbP2=zetadb*((weierpdbP2*((wP2)+(taul2*wP2))));	

condbP3=zetadb*((weierpdbP3*((wP3)+(taul3*wP3))));	

condbP4=zetadb*((weierpdbP4*((wP4)+(taul4*wP4))));	

condbP5=zetadb*((weierpdbP5*((wP5)+(taul5*wP5))));		

condbP6=zetadb*((weierpdbP6*((wP6)+(taul6*wP6))));	

condbP7=zetadb*((weierpdbP7*((wP7)+(taul7*wP7))));

condbE = condbE1+condbE2+condbE3+condbE4+condbE5+condbE6+condbE7;

condbF = condbF1+condbF2+condbF3+condbF4+condbF5+condbF6+condbF7;

condbM = condbM1+condbM2+condbM3+condbM4+condbM5+condbM6+condbM7;

condbP = condbP1+condbP2+condbP3+condbP4+condbP5+condbP6+condbP7;

omegaE1=(1+R(-1))*condcE1(-1);

omegaE2=(1+R(-1))*condcE2(-1);

omegaE3=(1+R(-1))*condcE3(-1);

omegaE4=(1+R(-1))*condcE4(-1);

omegaE5=(1+R(-1))*condcE5(-1);

omegaE6=(1+R(-1))*condcE6(-1);

omegaE7=(1+R(-1))*condcE7(-1);

omegaF1=((1+R(-1))*omegaE1(-1))+condcF1(-1);

omegaF2=((1+R(-1))*omegaE2(-1))+condcF2(-1);

omegaF3=((1+R(-1))*omegaE3(-1))+condcF3(-1);

omegaF4=((1+R(-1))*omegaE4(-1))+condcF4(-1);

omegaF5=((1+R(-1))*omegaE5(-1))+condcF5(-1);

omegaF6=((1+R(-1))*omegaE6(-1))+condcF6(-1);

omegaF7=((1+R(-1))*omegaE7(-1))+condcF7(-1);

omegaM1=((1+R(-1))*omegaF1(-1))+condcM1(-1);

omegaM2=((1+R(-1))*omegaF2(-1))+condcM2(-1);

omegaM3=((1+R(-1))*omegaF3(-1))+condcM3(-1);

omegaM4=((1+R(-1))*omegaF4(-1))+condcM4(-1);

omegaM5=((1+R(-1))*omegaF5(-1))+condcM5(-1);

omegaM6=((1+R(-1))*omegaF6(-1))+condcM6(-1);

omegaM7=((1+R(-1))*omegaF7(-1))+condcM7(-1);

omegaP1=((1+R(-1))*omegaM1(-1))+condcP1(-1);

omegaP2=((1+R(-1))*omegaM2(-1))+condcP2(-1);

omegaP3=((1+R(-1))*omegaM3(-1))+condcP3(-1);

omegaP4=((1+R(-1))*omegaM4(-1))+condcP4(-1);

omegaP5=((1+R(-1))*omegaM5(-1))+condcP5(-1);

omegaP6=((1+R(-1))*omegaM6(-1))+condcP6(-1);

omegaP7=((1+R(-1))*omegaM7(-1))+condcP7(-1);

omegaR1=((1+R(-1))*omegaP1(-1));

omegaR2=((1+R(-1))*omegaP2(-1));

omegaR3=((1+R(-1))*omegaP3(-1));

omegaR4=((1+R(-1))*omegaP4(-1));

omegaR5=((1+R(-1))*omegaP5(-1));

omegaR6=((1+R(-1))*omegaP6(-1));

omegaR7=((1+R(-1))*omegaP7(-1));

omegaE = omegaE1+omegaE2+omegaE3+omegaE4+omegaE5+omegaE6+omegaE7;

omegaF = omegaF1+omegaF2+omegaF3+omegaF4+omegaF5+omegaF6+omegaF7;

omegaM = omegaM1+omegaM2+omegaM3+omegaM4+omegaM5+omegaM6+omegaM7;

omegaP = omegaP1+omegaP2+omegaP3+omegaP4+omegaP5+omegaP6+omegaP7;

omegaR = omegaR1+omegaR2+omegaR3+omegaR4+omegaR5+omegaR6+omegaR7;

Omega = omegaE + omegaF + omegaM + omegaP + omegaR;

psiE1=(1+R(-1))*condbE1(-1);

psiE2=(1+R(-1))*condbE2(-1);

psiE3=(1+R(-1))*condbE3(-1);

psiE4=(1+R(-1))*condbE4(-1);

psiE5=(1+R(-1))*condbE5(-1);

psiE6=(1+R(-1))*condbE6(-1);

psiE7=(1+R(-1))*condbE7(-1);

psiF1=((1+R(-1))*psiE1(-1))+condbF1(-1);

psiF2=((1+R(-1))*psiE2(-1))+condbF2(-1);

psiF3=((1+R(-1))*psiE3(-1))+condbF3(-1);

psiF4=((1+R(-1))*psiE4(-1))+condbF4(-1);

psiF5=((1+R(-1))*psiE5(-1))+condbF5(-1);

psiF6=((1+R(-1))*psiE6(-1))+condbF6(-1);

psiF7=((1+R(-1))*psiE7(-1))+condbF7(-1);

psiM1=((1+R(-1))*psiF1(-1))+condbM1(-1);

psiM2=((1+R(-1))*psiF2(-1))+condbM2(-1);

psiM3=((1+R(-1))*psiF3(-1))+condbM3(-1);

psiM4=((1+R(-1))*psiF4(-1))+condbM4(-1);

psiM5=((1+R(-1))*psiF5(-1))+condbM5(-1);

psiM6=((1+R(-1))*psiF6(-1))+condbM6(-1);

psiM7=((1+R(-1))*psiF7(-1))+condbM7(-1);

psiP1=((1+R(-1))*psiM1(-1))+condbP1(-1);

psiP2=((1+R(-1))*psiM2(-1))+condbP2(-1);

psiP3=((1+R(-1))*psiM3(-1))+condbP3(-1);

psiP4=((1+R(-1))*psiM4(-1))+condbP4(-1);

psiP5=((1+R(-1))*psiM5(-1))+condbP5(-1);

psiP6=((1+R(-1))*psiM6(-1))+condbP6(-1);

psiP7=((1+R(-1))*psiM7(-1))+condbP7(-1);

psiR1=((1+R(-1))*psiP1(-1));

psiR2=((1+R(-1))*psiP2(-1));

psiR3=((1+R(-1))*psiP3(-1));

psiR4=((1+R(-1))*psiP4(-1));

psiR5=((1+R(-1))*psiP5(-1));

psiR6=((1+R(-1))*psiP6(-1));

psiR7=((1+R(-1))*psiP7(-1));

psiE = psiE1+psiE2+psiE3+psiE4+psiE5+psiE6+psiE7;

psiF = psiF1+psiF2+psiF3+psiF4+psiF5+psiF6+psiF7;

psiM = psiM1+psiM2+psiM3+psiM4+psiM5+psiM6+psiM7;

psiP = psiP1+psiP2+psiP3+psiP4+psiP5+psiP6+psiP7;

psiR = psiR1+psiR2+psiR3+psiR4+psiR5+psiR6+psiR7;

Psi = psiE + psiF + psiM + psiP + psiR;

bendb1 = taul1*(wrdb*wP1);

bendb2 = taul2*(wrdb*wP2);

bendb3 = taul3*(wrdb*wP3);

bendb4 = taul4*(wrdb*wP4);

bendb5 = taul5*(wrdb*wP5);

bendb6 = taul6*(wrdb*wP6);

bendb7 = taul7*(wrdb*wP7);

retE1=omegaE1+psiE1;

retE2=omegaE2+psiE2;

retE3=omegaE3+psiE3;

retE4=omegaE4+psiE4;

retE5=omegaE5+psiE5;

retE6=omegaE6+psiE6;

retE7=omegaE7+psiE7;

retF1=omegaF1+psiF1;

retF2=omegaF2+psiF2;

retF3=omegaF3+psiF3;

retF4=omegaF4+psiF4;

retF5=omegaF5+psiF5;

retF6=omegaF6+psiF6;

retF7=omegaF7+psiF7;

retM1=omegaM1+psiM1;

retM2=omegaM2+psiM2;

retM3=omegaM3+psiM3;

retM4=omegaM4+psiM4;

retM5=omegaM5+psiM5;

retM6=omegaM6+psiM6;

retM7=omegaM7+psiM7;

retP1=omegaP1+psiP1;

retP2=omegaP2+psiP2;

retP3=omegaP3+psiP3;

retP4=omegaP4+psiP4;

retP5=omegaP5+psiP5;

retP6=omegaP6+psiP6;

retP7=omegaP7+psiP7;

retR1=omegaR1+psiR1;

retR2=omegaR2+psiR2;

retR3=omegaR3+psiR3;

retR4=omegaR4+psiR4;

retR5=omegaR5+psiR5;

retR6=omegaR6+psiR6;

retR7=omegaR7+psiR7;

retE = retE1+retE2+retE3+retE4+retE5+retE6+retE7;

retF = retF1+retF2+retF3+retF4+retF5+retF6+retF7;

retM = retM1+retM2+retM3+retM4+retM5+retM6+retM7;

retP = retP1+retP2+retP3+retP4+retP5+retP6+retP7;

retR = retR1+retR2+retR3+retR4+retR5+retR6+retR7;

RET = retE + retF + retM + retP + retR;

ggE1=phiE1*(sE1);

ggE2=phiE2*(sE2);

ggE3=phiE3*(sE3);

ggE4=phiE4*(sE4);

ggE5=phiE5*(sE5);

ggE6=phiE6*(sE6);

ggE7=phiE7*(sE7);

ggF1=phiF1*(sF1);

ggF2=phiF2*(sF2);

ggF3=phiF3*(sF3);

ggF4=phiF4*(sF4);

ggF5=phiF5*(sF5);

ggF6=phiF6*(sF6);

ggF7=phiF7*(sF7);

ggM1=phiM1*(sM1);

ggM2=phiM2*(sM2);

ggM3=phiM3*(sM3);

ggM4=phiM4*(sM4);

ggM5=phiM5*(sM5);

ggM6=phiM6*(sM6);

ggM7=phiM7*(sM7);

ggE = sE1 + sE2 + sE3 + sE4 + sE5 + sE6 + sE7;

ggF = sF1 + sF2 + sF3 + sF4 + sF5 + sF6 + sF7;

ggM = sM1 + sM2 + sM3 + sM4 + sM5 + sM6 + sM7;

Gg = ggE + ggF + ggM; 

bgM1=(1-phiM1)*((gammaM1)*(sM1));

bgM2=(1-phiM2)*((gammaM2)*(sM2));

bgM3=(1-phiM3)*((gammaM3)*(sM3));

bgM4=(1-phiM4)*((gammaM4)*(sM4));

bgM5=(1-phiM5)*((gammaM5)*(sM5));

bgM6=(1-phiM6)*((gammaM6)*(sM6));

bgM7=(1-phiM7)*((gammaM7)*(sM7));

bgP1=gammaP1*(sP1);

bgP2=gammaP2*(sP2);

bgP3=gammaP3*(sP3);

bgP4=gammaP4*(sP4);

bgP5=gammaP5*(sP5);

bgP6=gammaP6*(sP6);

bgP7=gammaP7*(sP7);

bgR1=gammaR1*(omegaR1+bendb1);

bgR2=gammaR2*(omegaR2+bendb2);

bgR3=gammaR3*(omegaR3+bendb3);

bgR4=gammaR4*(omegaR4+bendb4);

bgR5=gammaR5*(omegaR5+bendb5);

bgR6=gammaR6*(omegaR6+bendb6);

bgR7=gammaR7*(omegaR7+bendb7);

bgM = bgM1 + bgM2 + bgM3 + bgM4 + bgM5 + bgM6 + bgM7;

bgP = bgP1 + bgP2 + bgP3 + bgP4 + bgP5 + bgP6 + bgP7;

bgR = bgR1 + bgR2 + bgR3 + bgR4 + bgR5 + bgR6 + bgR7;

Bg = bgM + bgP + bgR;

grM1=ggE1;

grM2=ggE2;

grM3=ggE3;

grM4=ggE4;

grM5=ggE5;

grM6=ggE6;

grM7=ggE7;

grP1=ggF1;

grP2=ggF2;

grP3=ggF3;

grP4=ggF4;

grP5=ggF5;

grP6=ggF6;

grP7=ggF7;

grR1=ggM1;

grR2=ggM2;

grR3=ggM3;

grR4=ggM4;

grR5=ggM5;

grR6=ggM6;

grR7=ggM7;

grM = grM1+grM2+grM3+grM4+grM5+grM6+grM7;

grP = grP1+grP2+grP3+grP4+grP5+grP6+grP7;

grR = grR1+grR2+grR3+grR4+grR5+grR6+grR7;

Gr = grM + grP + grR; 

brE1=bgM1;

brE2=bgM2;

brE3=bgM3;

brE4=bgM4;

brE5=bgM5;

brE6=bgM6;

brE7=bgM7;

brF1=bgP1;

brF2=bgP2;

brF3=bgP3;

brF4=bgP4;

brF5=bgP5;

brF6=bgP6;

brF7=bgP7;

brM1=bgR1;

brM2=bgR2;

brM3=bgR3;

brM4=bgR4;

brM5=bgR5;

brM6=bgR6;

brM7=bgR7;

brE = brE1+brE2+brE3+brE4+brE5+brE6+brE7;

brF = brF1+brF2+brF3+brF4+brF5+brF6+brF7;

brM = brM1+brM2+brM3+brM4+brM5+brM6+brM7;

Br = brE + brF + brM;

xpreE1=(brE1);

xpreE2=(brE2);

xpreE3=(brE3);

xpreE4=(brE4);

xpreE5=(brE5);

xpreE6=(brE6);

xpreE7=(brE7);

xpreF1=(brF1);

xpreF2=(brF2);

xpreF3=(brF3);

xpreF4=(brF4);

xpreF5=(brF5);

xpreF6=(brF6);

xpreF7=(brF7);

xpreM1=(brM1+grM1);

xpreM2=(brM2+grM2);

xpreM3=(brM3+grM3);

xpreM4=(brM4+grM4);

xpreM5=(brM5+grM5);

xpreM6=(brM6+grM6);

xpreM7=(brM7+grM7);

xpreP1=(grP1);

xpreP2=(grP2);

xpreP3=(grP3);

xpreP4=(grP4);

xpreP5=(grP5);

xpreP6=(grP6);

xpreP7=(grP7);

xpreR1=(grR1);

xpreR2=(grR2);

xpreR3=(grR3);

xpreR4=(grR4);

xpreR5=(grR5);

xpreR6=(grR6);

xpreR7=(grR7);

xpreE = xpreE1 + xpreE2 + xpreE3 + xpreE4 + xpreE5 + xpreE6 + xpreE7;

xpreF = xpreF1 + xpreF2 + xpreF3 + xpreF4 + xpreF5 + xpreF6 + xpreF7;

xpreM = xpreM1 + xpreM2 + xpreM3 + xpreM4 + xpreM5 + xpreM6 + xpreM7;

xpreP = xpreP1 + xpreP2 + xpreP3 + xpreP4 + xpreP5 + xpreP6 + xpreP7;

xpreR = xpreR1 + xpreR2 + xpreR3 + xpreR4 + xpreR5 + xpreR6 + xpreR7;

Xpre = xpreE + xpreF + xpreM + xpreP + xpreR;

xE1=(1-tauk)*(brE1);

xE2=(1-tauk)*(brE2);

xE3=(1-tauk)*(brE3);

xE4=(1-tauk)*(brE4);

xE5=(1-tauk)*(brE5);

xE6=(1-tauk)*(brE6);

xE7=(1-tauk)*(brE7);

xF1=(1-tauk)*(brF1);

xF2=(1-tauk)*(brF2);

xF3=(1-tauk)*(brF3);

xF4=(1-tauk)*(brF4);

xF5=(1-tauk)*(brF5);

xF6=(1-tauk)*(brF6);

xF7=(1-tauk)*(brF7);

xM1=(1-tauk)*(brM1+grM1);

xM2=(1-tauk)*(brM2+grM2);

xM3=(1-tauk)*(brM3+grM3);

xM4=(1-tauk)*(brM4+grM4);

xM5=(1-tauk)*(brM5+grM5);

xM6=(1-tauk)*(brM6+grM6);

xM7=(1-tauk)*(brM7+grM7);

xP1=(1-tauk)*(grP1);

xP2=(1-tauk)*(grP2);

xP3=(1-tauk)*(grP3);

xP4=(1-tauk)*(grP4);

xP5=(1-tauk)*(grP5);

xP6=(1-tauk)*(grP6);

xP7=(1-tauk)*(grP7);

xR1=(1-tauk)*(grR1);

xR2=(1-tauk)*(grR2);

xR3=(1-tauk)*(grR3);

xR4=(1-tauk)*(grR4);

xR5=(1-tauk)*(grR5);

xR6=(1-tauk)*(grR6);

xR7=(1-tauk)*(grR7);

xE = xE1 + xE2 + xE3 + xE4 + xE5 + xE6 + xE7;

xF = xF1 + xF2 + xF3 + xF4 + xF5 + xF6 + xF7;

xM = xM1 + xM2 + xM3 + xM4 + xM5 + xM6 + xM7;

xP = xP1 + xP2 + xP3 + xP4 + xP5 + xP6 + xP7;

xR = xR1 + xR2 + xR3 + xR4 + xR5 + xR6 + xR7;

X = xE + xF + xM + xP + xR;

cE1=(wE1+xE1)-(((1-phiE1))*(sE1));

cE2=(wE2+xE2)-(((1-phiE2))*(sE2));

cE3=(wE3+xE3)-(((1-phiE3))*(sE3));

cE4=(wE4+xE4)-(((1-phiE4))*(sE4));

cE5=(wE5+xE5)-(((1-phiE5))*(sE5));

cE6=(wE6+xE6)-(((1-phiE6))*(sE6));

cE7=(wE7+xE7)-(((1-phiE7))*(sE7));

cF1=(wF1+xF1)-(((1-phiF1))*(sF1));

cF2=(wF2+xF2)-(((1-phiF2))*(sF2));

cF3=(wF3+xF3)-(((1-phiF3))*(sF3));

cF4=(wF4+xF4)-(((1-phiF4))*(sF4));

cF5=(wF5+xF5)-(((1-phiF5))*(sF5));

cF6=(wF6+xF6)-(((1-phiF6))*(sF6));

cF7=(wF7+xF7)-(((1-phiF7))*(sF7));

cM1=(wM1+xM1)-((1-(phiM1+gammaM1))*(sM1));

cM2=(wM2+xM2)-((1-(phiM2+gammaM2))*(sM2));

cM3=(wM3+xM3)-((1-(phiM3+gammaM3))*(sM3));

cM4=(wM4+xM4)-((1-(phiM4+gammaM4))*(sM4));

cM5=(wM5+xM5)-((1-(phiM5+gammaM5))*(sM5));

cM6=(wM6+xM6)-((1-(phiM6+gammaM6))*(sM6));

cM7=(wM7+xM7)-((1-(phiM7+gammaM7))*(sM7));

cP1=(wP1+xP1)-(((1-gammaP1))*(sP1));

cP2=(wP2+xP2)-(((1-gammaP2))*(sP2));

cP3=(wP3+xP3)-(((1-gammaP3))*(sP3));

cP4=(wP4+xP4)-(((1-gammaP4))*(sP4));

cP5=(wP5+xP5)-(((1-gammaP5))*(sP5));

cP6=(wP6+xP6)-(((1-gammaP6))*(sP6));

cP7=(wP7+xP7)-(((1-gammaP7))*(sP7));

cR1=((1-gammaR1)*(omegaR1+bendb1))+xR1;

cR2=((1-gammaR2)*(omegaR2+bendb2))+xR2;

cR3=((1-gammaR3)*(omegaR3+bendb3))+xR3;

cR4=((1-gammaR4)*(omegaR4+bendb4))+xR4;

cR5=((1-gammaR5)*(omegaR5+bendb5))+xR5;

cR6=((1-gammaR6)*(omegaR6+bendb6))+xR6;

cR7=((1-gammaR7)*(omegaR7+bendb7))+xR7;

cE = cE1 + cE2 + cE3 + cE4 + cE5 + cE6 + cE7;

cF = cF1 + cF2 + cF3 + cF4 + cF5 + cF6 + cF7;

cM = cM1 + cM2 + cM3 + cM4 + cM5 + cM6 + cM7;

cP = cP1 + cP2 + cP3 + cP4 + cP5 + cP6 + cP7;

cR = cR1 + cR2 + cR3 + cR4 + cR5 + cR6 + cR7;

C = cE + cF + cM + cP + cR;

cpostE1=(1-tauc)*((wE1+xE1)-(((1-phiE1))*(spostE1)));

cpostE2=(1-tauc)*((wE2+xE2)-(((1-phiE2))*(spostE2)));

cpostE3=(1-tauc)*((wE3+xE3)-(((1-phiE3))*(spostE3)));

cpostE4=(1-tauc)*((wE4+xE4)-(((1-phiE4))*(spostE4)));

cpostE5=(1-tauc)*((wE5+xE5)-(((1-phiE5))*(spostE5)));

cpostE6=(1-tauc)*((wE6+xE6)-(((1-phiE6))*(spostE6)));

cpostE7=(1-tauc)*((wE7+xE7)-(((1-phiE7))*(spostE7)));

cpostF1=(1-tauc)*((wF1+xF1)-(((1-phiF1))*(spostF1)));

cpostF2=(1-tauc)*((wF2+xF2)-(((1-phiF2))*(spostF2)));

cpostF3=(1-tauc)*((wF3+xF3)-(((1-phiF3))*(spostF3)));

cpostF4=(1-tauc)*((wF4+xF4)-(((1-phiF4))*(spostF4)));

cpostF5=(1-tauc)*((wF5+xF5)-(((1-phiF5))*(spostF5)));

cpostF6=(1-tauc)*((wF6+xF6)-(((1-phiF6))*(spostF6)));

cpostF7=(1-tauc)*((wF7+xF7)-(((1-phiF7))*(spostF7)));

cpostM1=(1-tauc)*((wM1+xM1)-(((1-(phiM1+gammaM1))*(spostM1))));

cpostM2=(1-tauc)*((wM2+xM2)-(((1-(phiM2+gammaM2))*(spostM2))));

cpostM3=(1-tauc)*((wM3+xM3)-(((1-(phiM3+gammaM3))*(spostM3))));

cpostM4=(1-tauc)*((wM4+xM4)-(((1-(phiM4+gammaM4))*(spostM4))));

cpostM5=(1-tauc)*((wM5+xM5)-(((1-(phiM5+gammaM5))*(spostM5))));

cpostM6=(1-tauc)*((wM6+xM6)-(((1-(phiM6+gammaM6))*(spostM6))));

cpostM7=(1-tauc)*((wM7+xM7)-(((1-(phiM7+gammaM7))*(spostM7))));

cpostP1=(1-tauc)*((wP1+xP1)-(((1-gammaP1))*(spostP1)));

cpostP2=(1-tauc)*((wP2+xP2)-(((1-gammaP2))*(spostP2)));

cpostP3=(1-tauc)*((wP3+xP3)-(((1-gammaP3))*(spostP3)));

cpostP4=(1-tauc)*((wP4+xP4)-(((1-gammaP4))*(spostP4)));

cpostP5=(1-tauc)*((wP5+xP5)-(((1-gammaP5))*(spostP5)));

cpostP6=(1-tauc)*((wP6+xP6)-(((1-gammaP6))*(spostP6)));
                      
cpostP7=(1-tauc)*((wP7+xP7)-(((1-gammaP7))*(spostP7)));

cpostR1=(1-tauc)*(((1-gammaR1)*(omegaR1+bendb1))+xR1);

cpostR2=(1-tauc)*(((1-gammaR2)*(omegaR2+bendb2))+xR2);

cpostR3=(1-tauc)*(((1-gammaR3)*(omegaR3+bendb3))+xR3);

cpostR4=(1-tauc)*(((1-gammaR4)*(omegaR4+bendb4))+xR4);

cpostR5=(1-tauc)*(((1-gammaR5)*(omegaR5+bendb5))+xR5);

cpostR6=(1-tauc)*(((1-gammaR6)*(omegaR6+bendb6))+xR6);

cpostR7=(1-tauc)*(((1-gammaR7)*(omegaR7+bendb7))+xR7);

cpostE = cpostE1 + cpostE2 + cpostE3 + cpostE4 + cpostE5 + cpostE6 + cpostE7;

cpostF = cpostF1 + cpostF2 + cpostF3 + cpostF4 + cpostF5 + cpostF6 + cpostF7;

cpostM = cpostM1 + cpostM2 + cpostM3 + cpostM4 + cpostM5 + cpostM6 + cpostM7;

cpostP = cpostP1 + cpostP2 + cpostP3 + cpostP4 + cpostP5 + cpostP6 + cpostP7;

cpostR = cpostR1 + cpostR2 + cpostR3 + cpostR4 + cpostR5 + cpostR6 + cpostR7;

Cpost = cpostE + cpostF + cpostM + cpostP + cpostR;

wthetaE1=((((1-phiE1))*(spostE1))*(1+R))+retE1;

wthetaE2=((((1-phiE2))*(spostE2))*(1+R))+retE2;

wthetaE3=((((1-phiE3))*(spostE3))*(1+R))+retE3;

wthetaE4=((((1-phiE4))*(spostE4))*(1+R))+retE4;

wthetaE5=((((1-phiE5))*(spostE5))*(1+R))+retE5;

wthetaE6=(1-tauw)*(((((1-phiE6))*(spostE6))*(1+R))+retE6);

wthetaE7=(1-tauw)*(((((1-phiE7))*(spostE7))*(1+R))+retE7);

wthetaF1=(((((1-phiF1))*(spostF1))+(wthetaE1(-1)))*(1+R))+retF1;

wthetaF2=(((((1-phiF2))*(spostF2))+(wthetaE2(-1)))*(1+R))+retF2;

wthetaF3=(((((1-phiF3))*(spostF3))+(wthetaE3(-1)))*(1+R))+retF3;

wthetaF4=(((((1-phiF4))*(spostF4))+(wthetaE4(-1)))*(1+R))+retF4;

wthetaF5=(((((1-phiF5))*(spostF5))+(wthetaE5(-1)))*(1+R))+retF5;

wthetaF6=(1-tauw)*((((((1-phiF6))*(spostF6))+(wthetaE6(-1)))*(1+R))+retF6);

wthetaF7=(1-tauw)*((((((1-phiF7))*(spostF7))+(wthetaE7(-1)))*(1+R))+retF7);

wthetaM1=((((1-(phiM1+gammaM1))*(spostM1))+(wthetaF1(-1)))*(1+R))+retM1;

wthetaM2=((((1-(phiM2+gammaM2))*(spostM2))+(wthetaF2(-1)))*(1+R))+retM2;

wthetaM3=((((1-(phiM3+gammaM3))*(spostM3))+(wthetaF3(-1)))*(1+R))+retM3;

wthetaM4=((((1-(phiM4+gammaM4))*(spostM4))+(wthetaF4(-1)))*(1+R))+retM4;

wthetaM5=((((1-(phiM5+gammaM5))*(spostM5))+(wthetaF5(-1)))*(1+R))+retM5;

wthetaM6=(1-tauw)*(((((1-(phiM6+gammaM6))*(spostM6))+(wthetaF6(-1)))*(1+R))+retM6);

wthetaM7=(1-tauw)*(((((1-(phiM7+gammaM7))*(spostM7))+(wthetaF7(-1)))*(1+R))+retM7);

wthetaP1=(((((1-gammaP1))*(spostP1))+(wthetaM1(-1)))*(1+R))+retP1;

wthetaP2=(((((1-gammaP2))*(spostP2))+(wthetaM2(-1)))*(1+R))+retP2;

wthetaP3=(((((1-gammaP3))*(spostP3))+(wthetaM3(-1)))*(1+R))+retP3;

wthetaP4=(((((1-gammaP4))*(spostP4))+(wthetaM4(-1)))*(1+R))+retP4;

wthetaP5=(((((1-gammaP5))*(spostP5))+(wthetaM5(-1)))*(1+R))+retP5;

wthetaP6=(1-tauw)*((((((1-gammaP6))*(spostP6))+(wthetaM6(-1)))*(1+R))+retP6);

wthetaP7=(1-tauw)*((((((1-gammaP7))*(spostP7))+(wthetaM7(-1)))*(1+R))+retP7);

wthetaR1=(wthetaP1(-1))+retR1;

wthetaR2=(wthetaP2(-1))+retR2;

wthetaR3=(wthetaP3(-1))+retR3;

wthetaR4=(wthetaP4(-1))+retR4;

wthetaR5=(wthetaP5(-1))+retR5;

wthetaR6=(1-tauw)*((wthetaP6(-1))+retR6);

wthetaR7=(1-tauw)*((wthetaP7(-1))+retR7);

wthetaE = wthetaE1 + wthetaE2 + wthetaE3 + wthetaE4 + wthetaE5 + wthetaE6 + wthetaE7;

wthetaF = wthetaF1 + wthetaF2 + wthetaF3 + wthetaF4 + wthetaF5 + wthetaF6 + wthetaF7;

wthetaM = wthetaM1 + wthetaM2 + wthetaM3 + wthetaM4 + wthetaM5 + wthetaM6 + wthetaM7;

wthetaP = wthetaP1 + wthetaP2 + wthetaP3 + wthetaP4 + wthetaP5 + wthetaP6 + wthetaP7;

wthetaR = wthetaR1 + wthetaR2 + wthetaR3 + wthetaR4 + wthetaR5 + wthetaR6 + wthetaR7;

wTheta = wthetaE + wthetaF + wthetaM + wthetaP + wthetaR;

tauwTheta = wthetaE6 + wthetaE7 + wthetaP6 + wthetaP7 + wthetaM7 + wthetaM6 + wthetaF7 + wthetaF6 + wthetaE7 + wthetaE6;

tautw1=wvarphi1*tauwTheta;

tautw2=wvarphi2*tauwTheta;

tautw3=wvarphi3*tauwTheta;

tautw4=wvarphi4*tauwTheta;

tautw5=wvarphi5*tauwTheta;

REV = (Y-Pi)+((C-Cpost)+((S-Spost))+((Xpre-X))+((W-WPost)));

Gt = govtconsump*REV;

Taut = REV - Gt;

Gbudg = Taut + Gt; 

tautE1=varphiE1*Taut;

tautE2=varphiE2*Taut;

tautE3=varphiE3*Taut;

tautE4=varphiE4*Taut;

tautE5=varphiE5*Taut;

tautE6=varphiE6*Taut;

tautE7=varphiE7*Taut;

tautF1=varphiF1*Taut;

tautF2=varphiF2*Taut;

tautF3=varphiF3*Taut;

tautF4=varphiF4*Taut;

tautF5=varphiF5*Taut;

tautF6=varphiF6*Taut;

tautF7=varphiF7*Taut;

tautM1=varphiM1*Taut;

tautM2=varphiM2*Taut;

tautM3=varphiM3*Taut;

tautM4=varphiM4*Taut;

tautM5=varphiM5*Taut;

tautM6=varphiM6*Taut;

tautM7=varphiM7*Taut;

tautP1=varphiP1*Taut;

tautP2=varphiP2*Taut;

tautP3=varphiP3*Taut;

tautP4=varphiP4*Taut;

tautP5=varphiP5*Taut;

tautP6=varphiP6*Taut;

tautP7=varphiP7*Taut;

tautR1=varphiR1*Taut;

tautR2=varphiR2*Taut;

tautR3=varphiR3*Taut;

tautR4=varphiR4*Taut;

tautR5=varphiR5*Taut;

tautR6=varphiR6*Taut;

tautR7=varphiR7*Taut;

tautE = tautE1 + tautE2 + tautE3 + tautE4 + tautE5 + tautE6 + tautE7;

tautF = tautF1 + tautF2 + tautF3 + tautF4 + tautF5 + tautF6 + tautF7;

tautM = tautM1 + tautM2 + tautM3 + tautM4 + tautM5 + tautM6 + tautM7;

tautP = tautP1 + tautP2 + tautP3 + tautP4 + tautP5 + tautP6 + tautP7;

tautR = tautR1 + tautR2 + tautR3 + tautR4 + tautR5 + tautR6 + tautR7;

thetaE1=((((1-phiE1))*(spostE1))*(1+R))+retE1+tautE1+tautw1;

thetaE2=((((1-phiE2))*(spostE2))*(1+R))+retE2+tautE2+tautw2;

thetaE3=((((1-phiE3))*(spostE3))*(1+R))+retE3+tautE3+tautw3;

thetaE4=((((1-phiE4))*(spostE4))*(1+R))+retE4+tautE4+tautw4;

thetaE5=((((1-phiE5))*(spostE5))*(1+R))+retE5+tautE5+tautw5;

thetaE6=((((1-phiE6))*(spostE6))*(1+R))+retE6+tautE6-((tauw)*(((((1-phiE6))*(spostE6))*(1+R))+retE6));

thetaE7=((((1-phiE7))*(spostE7))*(1+R))+retE7+tautE7-((tauw)*(((((1-phiE7))*(spostE7))*(1+R))+retE7));

thetaF1=(((((1-phiF1))*(spostF1))+(thetaE1(-1)))*(1+R))+retF1+tautF1+tautw1;

thetaF2=(((((1-phiF2))*(spostF2))+(thetaE2(-1)))*(1+R))+retF2+tautF2+tautw2;

thetaF3=(((((1-phiF3))*(spostF3))+(thetaE3(-1)))*(1+R))+retF3+tautF3+tautw3;

thetaF4=(((((1-phiF4))*(spostF4))+(thetaE4(-1)))*(1+R))+retF4+tautF4+tautw4;

thetaF5=(((((1-phiF5))*(spostF5))+(thetaE5(-1)))*(1+R))+retF5+tautF5+tautw5;

thetaF6=(((((1-phiF6))*(spostF6))+(thetaE6(-1)))*(1+R))+retF6+tautF6-((tauw)*((((((1-phiF6))*(spostF6))+(wthetaE6(-1)))*(1+R))+retF6));

thetaF7=(((((1-phiF7))*(spostF7))+(thetaE7(-1)))*(1+R))+retF7+tautF7-((tauw)*((((((1-phiF7))*(spostF7))+(wthetaE7(-1)))*(1+R))+retF7));

thetaM1=((((1-(phiM1+gammaM1))*(spostM1))+(thetaF1(-1)))*(1+R))+retM1+tautM1+tautw1;

thetaM2=((((1-(phiM2+gammaM2))*(spostM2))+(thetaF2(-1)))*(1+R))+retM2+tautM2+tautw2;

thetaM3=((((1-(phiM3+gammaM3))*(spostM3))+(thetaF3(-1)))*(1+R))+retM3+tautM3+tautw3;

thetaM4=((((1-(phiM4+gammaM4))*(spostM4))+(thetaF4(-1)))*(1+R))+retM4+tautM4+tautw4;

thetaM5=((((1-(phiM5+gammaM5))*(spostM5))+(thetaF5(-1)))*(1+R))+retM5+tautM5+tautw5;

thetaM6=((((1-(phiM6+gammaM6))*(spostM6))+(thetaF6(-1)))*(1+R))+retM6+tautM6-((tauw)*(((((1-(phiM7+gammaM6))*(spostM6))+(wthetaF6(-1)))*(1+R))+retM6));

thetaM7=((((1-(phiM7+gammaM7))*(spostM7))+(thetaF7(-1)))*(1+R))+retM7+tautM7-((tauw)*(((((1-(phiM7+gammaM7))*(spostM7))+(wthetaF7(-1)))*(1+R))+retM7));

thetaP1=(((((1-gammaP1))*(spostP1))+(thetaM1(-1)))*(1+R))+retP1+tautP1+tautw1;

thetaP2=(((((1-gammaP2))*(spostP2))+(thetaM2(-1)))*(1+R))+retP2+tautP2+tautw2;

thetaP3=(((((1-gammaP3))*(spostP3))+(thetaM3(-1)))*(1+R))+retP3+tautP3+tautw3;

thetaP4=(((((1-gammaP4))*(spostP4))+(thetaM4(-1)))*(1+R))+retP4+tautP4+tautw4;

thetaP5=(((((1-gammaP5))*(spostP5))+(thetaM5(-1)))*(1+R))+retP5+tautP5+tautw5;

thetaP6=(((((1-gammaP6))*(spostP6))+(thetaM6(-1)))*(1+R))+retP6+tautP6-((tauw)*((((((1-gammaP6))*(spostP6))+(wthetaM6(-1)))*(1+R))+retP6));

thetaP7=(((((1-gammaP7))*(spostP7))+(thetaM7(-1)))*(1+R))+retP7+tautP7-((tauw)*((((((1-gammaP7))*(spostP7))+(wthetaM7(-1)))*(1+R))+retP7));

thetaR1=(thetaP1(-1))+retR1+tautR1+tautw1;

thetaR2=(thetaP2(-1))+retR2+tautR2+tautw2;

thetaR3=(thetaP3(-1))+retR3+tautR3+tautw3;

thetaR4=(thetaP4(-1))+retR4+tautR4+tautw4;

thetaR5=(thetaP5(-1))+retR5+tautR5+tautw5;

thetaR6=(thetaP6(-1))+retR6+tautR6-((tauw)*((wthetaP6(-1))+retR6));

thetaR7=(thetaP7(-1))+retR7+tautR7-((tauw)*((wthetaP7(-1))+retR7));

thetaE = thetaE1 + thetaE2 + thetaE3 + thetaE4 + thetaE5 + thetaE6 + thetaE7;

thetaF = thetaF1 + thetaF2 + thetaF3 + thetaF4 + thetaF5 + thetaF6 + thetaF7;

thetaM = thetaM1 + thetaM2 + thetaM3 + thetaM4 + thetaM5 + thetaM6 + thetaM7;

thetaP = thetaP1 + thetaP2 + thetaP3 + thetaP4 + thetaP5 + thetaP6 + thetaP7;

thetaR = thetaR1 + thetaR2 + thetaR3 + thetaR4 + thetaR5 + thetaR6 + thetaR7;

Theta = thetaE + thetaF + thetaM + thetaP + thetaR;

K =(RET(-1)+Spost(-1));

junk=0.9*junk(+1);

end;

initval;
C       =1.6282;
cE      =0.107939;
cE1     =0.00367245;
cE2     =0.00636567;
cE3     =0.00777104;
cE4     =0.00815547;
cE5     =0.00862627;
cE6     =0.0127245;
cE7     =0.0606232;
cF      =0.139751;
cF1     =0.00475447;
cF2     =0.00824181;
cF3     =0.0100614;
cF4     =0.0105591;
cF5     =0.0111687;
cF6     =0.0164747;
cF7     =0.0784906;
cM      =0.199403;
cM1     =0.00678928;
cM2     =0.0117563;
cM3     =0.014352;
cM4     =0.0150621;
cM5     =0.0159316;
cM6     =0.0235014;
cM7     =0.11201;
cP      =0.221696;
cP1     =0.0075496;
cP2     =0.0130726;
cP3     =0.0159587;
cP4     =0.0167482;
cP5     =0.017715;
cP6     =0.0261312;
cP7     =0.12452;
cR      =6.95941;
cR1     =0.998618;
cR2     =0.997607;
cR3     =0.997078;
cR4     =0.996934;
cR5     =0.996757;
cR6     =0.995215;
cR7     =0.977201;
L       =4.2374;
K       =1.69592;
Y       =7.67496;
W       =0.817184;
WPost   =0.676776;
wE      =0.115052;
wE1     =0.00391838;
wE2     =0.00678494;
wE3     =0.00828287;
wE4     =0.00869262;
wE5     =0.00919443;
wE6     =0.0135626;
wE7     =0.0646161;
wF      =0.148891;
wF1     =0.00507084;
wF2     =0.00878051;
wF3     =0.010719;
wF4     =0.0112493;
wF5     =0.0118987;
wF6     =0.0175516;
wF7     =0.0836209;
wM      =0.175962;
wM1     =0.00599281;
wM2     =0.010377;
wM3     =0.0126679;
wM4     =0.0132946;
wM5     =0.0140621;
wM6     =0.0207427;
wM7     =0.0988247;
wP      =0.236872;
wP1     =0.00806725;
wP2     =0.013969;
wP3     =0.017053;
wP4     =0.0178966;
wP5     =0.0189297;
wP6     =0.0279229;
wP7     =0.133033;
R       =1;
Theta   =38.8251;
thetaE  =0.74833;
thetaE1 =0.0366158;
thetaE2 =0.0517946;
thetaE3 =0.0734375;
thetaE4 =0.0946369;
thetaE5 =0.122885;
thetaE6 =0.159718;
thetaE7 =0.209243;
thetaF  =2.40712;
thetaF1 =0.116933;
thetaF2 =0.165966;
thetaF3 =0.234742;
thetaF4 =0.301632;
thetaF5 =0.39074;
thetaF6 =0.508606;
thetaF7 =0.688503;
thetaM  =6.03054;
thetaM1 =0.29032;
thetaM2 =0.413826;
thetaM3 =0.583478;
thetaM4 =0.746951;
thetaM5 =0.96466;
thetaM6 =1.25802;
thetaM7 =1.77328;
thetaP  =13.6518;
thetaP1 =0.652113;
thetaP2 =0.932929;
thetaP3 =1.31192;
thetaP4 =1.67416;
thetaP5 =2.15646;
thetaP6 =2.81688;
thetaP7 =4.10733;
thetaR  =15.9873;
thetaR1 =0.753649;
thetaR2 =1.08488;
thetaR3 =1.51882;
thetaR4 =1.92774;
thetaR5 =2.47193;
thetaR6 =3.2381;
thetaR7 =4.9922;
S       =0.0473743;
sE      =0.00805363;
sE1     =0.000274287;
sE2     =0.000474946;
sE3     =0.000579801;
sE4     =0.000608484;
sE5     =0.00064361;
sE6     =0.000949379;
sE7     =0.00452313;
sF      =0.0104224;
sF1     =0.000354959;
sF2     =0.000614636;
sF3     =0.00075033;
sF4     =0.000787449;
sF5     =0.000832908;
sF6     =0.00122861;
sF7     =0.00585346;
sM      =0.0123173;
sM1     =0.000419497;
sM2     =0.000726388;
sM3     =0.000886754;
sM4     =0.000930622;
sM5     =0.000984345;
sM6     =0.00145199;
sM7     =0.00691773;
sP      =0.016581;
sP1     =0.000564708;
sP2     =0.000977829;
sP3     =0.00119371;
sP4     =0.00125276;
sP5     =0.00132508;
sP6     =0.0019546;
sP7     =0.00931232;
X       =0.0367286;
xE      =0.000698734;
xE1     =0.0000201294;
xE2     =0.0000414302;
xE3     =0.0000505769;
xE4     =0.000053079;
xE5     =0.0000561431;
xE6     =0.0000828158;
xE7     =0.000394559;
xF      =0.000969694;
xF1     =0.0000279354;
xF2     =0.0000574964;
xF3     =0.00007019;
xF4     =0.0000736623;
xF5     =0.0000779147;
xF6     =0.000114931;
xF7     =0.000547565;
xM      =0.034527;
xM1     =0.00117402;
xM2     =0.00203308;
xM3     =0.00248217;
xM4     =0.00260502;
xM5     =0.00275547;
xM6     =0.00406549;
xM7     =0.0194117;
xP      =0.000244372;
xP1     =0.00000752545;
xP2     =0.0000130308;
xP3     =0.0000159077;
xP4     =0.0000166946;
xP5     =0.0000176584;
xP6     =0.0000260476;
xP7     =0.000147507;
xR      =0.000288803;
xR1     =0.00000889371;
xR2     =0.0000154001;
xR3     =0.0000188;
xR4     =0.00001973;
xR5     =0.000020869;
xR6     =0.0000307835;
xR7     =0.000174327;
Gg      =0.0307933;
ggE     =0.00805363;
ggE1    =0.00000692276;
ggE2    =0.0000119872;
ggE3    =0.0000146337;
ggE4    =0.0000153576;
ggE5    =0.0000162442;
ggE6    =0.0000239615;
ggE7    =0.000135694;
ggF     =0.0104224;
ggF1    =0.00000895886;
ggF2    =0.0000155129;
ggF3    =0.0000189377;
ggF4    =0.0000198746;
ggF5    =0.0000210219;
ggF6    =0.000031009;
ggF7    =0.000175604;
ggM     =0.0123173;
ggM1    =0.0000105877;
ggM2    =0.0000183334;
ggM3    =0.0000223809;
ggM4    =0.0000234881;
ggM5    =0.000024844;
ggM6    =0.0000435598;
ggM7    =0.000207532;
Bg      =0.0428712;
bgM     =0.000831826;
bgM1    =0.0000239636;
bgM2    =0.0000493217;
bgM3    =0.0000602106;
bgM4    =0.0000631892;
bgM5    =0.000066837;
bgM6    =0.0000985903;
bgM7    =0.000469714;
bgP     =0.00116067;
bgP1    =0.0000395295;
bgP2    =0.0000684481;
bgP3    =0.0000835595;
bgP4    =0.0000876932;
bgP5    =0.0000927556;
bgP6    =0.000136822;
bgP7    =0.000651863;
bgR     =0.0408787;
bgR1    =0.00139071;
bgR2    =0.00240835;
bgR3    =0.00294034;
bgR4    =0.00308586;
bgR5    =0.00326408;
bgR6    =0.0048159;
bgR7    =0.0229735;
Gr      =0.000866445;
grM     =0.000224801;
grM1    =0.00000692276;
grM2    =0.0000119872;
grM3    =0.0000146337;
grM4    =0.0000153576;
grM5    =0.0000162442;
grM6    =0.0000239615;
grM7    =0.000135694;
grP     =0.000290919;
grP1    =0.00000895886;
grP2    =0.0000155129;
grP3    =0.0000189377;
grP4    =0.0000198746;
grP5    =0.0000210219;
grP6    =0.000031009;
grP7    =0.000175604;
grR     =0.000350726;
grR1    =0.0000105877;
grR2    =0.0000183334;
grR3    =0.0000223809;
grR4    =0.0000234881;
grR5    =0.000024844;
grR6    =0.0000435598;
grR7    =0.000207532;
Br      =0.0428712;
brE     =0.000831826;
brE1    =0.0000239636;
brE2    =0.0000493217;
brE3    =0.0000602106;
brE4    =0.0000631892;
brE5    =0.000066837;
brE6    =0.0000985903;
brE7    =0.000469714;
brF     =0.00116067;
brF1    =0.0000395295;
brF2    =0.0000684481;
brF3    =0.0000835595;
brF4    =0.0000876932;
brF5    =0.0000927556;
brF6    =0.000136822;
brF7    =0.000651863;
brM     =0.0408787;
brM1    =0.00139071;
brM2    =0.00240835;
brM3    =0.00294034;
brM4    =0.00308586;
brM5    =0.00326408;
brM6    =0.0048159;
brM7    =0.0229735;
Omega   =1.08878;
omegaE  =0.0220613;
omegaE1 =0.000751354;
omegaE2 =0.00130102;
omegaE3 =0.00158825;
omegaE4 =0.00166682;
omegaE5 =0.00176304;
omegaE6 =0.00260064;
omegaE7 =0.0123902;
omegaF  =0.0584525;
omegaF1 =0.00199074;
omegaF2 =0.00344711;
omegaF3 =0.00420814;
omegaF4 =0.00441631;
omegaF5 =0.00467126;
omegaF6 =0.0068905;
omegaF7 =0.0328284;
omegaM  =0.133959;
omegaM1 =0.00456231;
omegaM2 =0.00789994;
omegaM3 =0.00964403;
omegaM4 =0.0101211;
omegaM5 =0.0107054;
omegaM6 =0.0157914;
omegaM7 =0.0752348;
omegaP  =0.291078;
omegaP1 =0.00991339;
omegaP2 =0.0171657;
omegaP3 =0.0209554;
omegaP4 =0.0219921;
omegaP5 =0.0232617;
omegaP6 =0.0343129;
omegaP7 =0.163477;
omegaR  =0.583224;
omegaR1 =0.0198631;
omegaR2 =0.0343944;
omegaR3 =0.0419877;
omegaR4 =0.0440649;
omegaR5 =0.0466087;
omegaR6 =0.0687517;
omegaR7 =0.327554;
bendb1  =0.00000420795;
bendb2  =0.000010577;
bendb3  =0.0000170726;
bendb4  =0.0000188507;
bendb5  =0.00002099;
bendb6  =0.0000469105;
bendb7  =0.000639091;
Psi     =0.559589;
psiE    =0.0113387;
psiE1   =0.000342398;
psiE2   =0.000600937;
psiE3   =0.000743786;
psiE4   =0.000782865;
psiE5   =0.000830631;
psiE6   =0.00124606;
psiE7   =0.00679202;
psiF    =0.0300424;
psiF1   =0.000907199;
psiF2   =0.00159221;
psiF3   =0.00197069;
psiF4   =0.00207424;
psiF5   =0.00220079;
psiF6   =0.00330148;
psiF7   =0.0179958;
psiM    =0.0688498;
psiM1   =0.00207908;
psiM2   =0.00364896;
psiM3   =0.00451635;
psiM4   =0.00475365;
psiM5   =0.00504368;
psiM6   =0.00756619;
psiM7   =0.0412419;
psiP    =0.149603;
psiP1   =0.00451761;
psiP2   =0.00792878;
psiP3   =0.00981354;
psiP4   =0.0103292;
psiP5   =0.0109594;
psiP6   =0.0164405;
psiP7   =0.0896142;
psiR    =0.299755;
psiR1   =0.0090518;
psiR2   =0.0158866;
psiR3   =0.0196631;
psiR4   =0.0206962;
psiR5   =0.0219589;
psiR6   =0.0329413;
psiR7   =0.179557;
condbE  =0.00565896;
condbE1 =0.000170886;
condbE2 =0.000299918;
condbE3 =0.000371212;
condbE4 =0.000390716;
condbE5 =0.000414555;
condbE6 =0.000621887;
condbE7 =0.00338979;
condbF  =0.00732337;
condbF1 =0.000221146;
condbF2 =0.000388129;
condbF3 =0.000480392;
condbF4 =0.000505632;
condbF5 =0.000536483;
condbF6 =0.000804795;
condbF7 =0.00438679;
condbM  =0.00865489;
condbM1 =0.000261354;
condbM2 =0.000458698;
condbM3 =0.000567736;
condbM4 =0.000597565;
condbM5 =0.000634025;
condbM6 =0.000951121;
condbM7 =0.00518439;
condbP  =0.0116508;
condbP1 =0.000351823;
condbP2 =0.000617478;
condbP3 =0.00076426;
condbP4 =0.000804415;
condbP5 =0.000853495;
condbP6 =0.00128036;
condbP7 =0.00697898;
condcE  =0.0110105;
condcE1 =0.000374989;
condcE2 =0.000649319;
condcE3 =0.00079267;
condcE4 =0.000831884;
condcE5 =0.000879907;
condcE6 =0.00129794;
condcE7 =0.00618376;
condcF  =0.0142488;
condcF1 =0.00048528;
condcF2 =0.000840295;
condcF3 =0.00102581;
condcF4 =0.00107656;
condcF5 =0.0011387;
condcF6 =0.00167968;
condcF7 =0.00800252;
condcM  =0.0168395;
condcM1 =0.000573512;
condcM2 =0.000993075;
condcM3 =0.00121232;
condcM4 =0.00127229;
condcM5 =0.00134574;
condcM6 =0.00198508;
condcM7 =0.00945752;
condcP  =0.0226686;
condcP1 =0.000772036;
condcP2 =0.00133683;
condcP3 =0.00163197;
condcP4 =0.0017127;
condcP5 =0.00181157;
condcP6 =0.00267222;
condcP7 =0.0127313;
Taut    =5.00773;
tautE   =0.701083;
tautE1  =0.0350541;
tautE2  =0.0490758;
tautE3  =0.0701083;
tautE4  =0.0911407;
tautE5  =0.119184;
tautE6  =0.154238;
tautE7  =0.182281;
tautF   =0.801237;
tautF1  =0.0400619;
tautF2  =0.0560866;
tautF3  =0.0801237;
tautF4  =0.104161;
tautF5  =0.13621;
tautF6  =0.176272;
tautF7  =0.208322;
tautM   =0.951469;
tautM1  =0.0475735;
tautM2  =0.0666029;
tautM3  =0.0951469;
tautM4  =0.123691;
tautM5  =0.16175;
tautM6  =0.209323;
tautM7  =0.247382;
tautP   =1.1017;
tautP1  =0.0550851;
tautP2  =0.0771191;
tautP3  =0.11017;
tautP4  =0.143221;
tautP5  =0.187289;
tautP6  =0.242374;
tautP7  =0.286442;
tautR   =1.45224;
tautR1  =0.0726121;
tautR2  =0.101657;
tautR3  =0.145224;
tautR4  =0.188792;
tautR5  =0.246881;
tautR6  =0.319493;
tautR7  =0.377583;
RET     =1.64836;
retE    =0.0334;
retE1   =0.00109375;
retE2   =0.00190196;
retE3   =0.00233204;
retE4   =0.00244969;
retE5   =0.00259367;
retE6   =0.00384669;
retE7   =0.0191822;
retF    =0.0884948;
retF1   =0.00289794;
retF2   =0.00503932;
retF3   =0.00617883;
retF4   =0.00649055;
retF5   =0.00687205;
retF6   =0.010192;
retF7   =0.0508242;
retM    =0.202809;
retM1   =0.00664139;
retM2   =0.0115489;
retM3   =0.0141604;
retM4   =0.0148748;
retM5   =0.0157491;
retM6   =0.0233576;
retM7   =0.116477;
retP    =0.440681;
retP1   =0.014431;
retP2   =0.0250945;
retP3   =0.030769;
retP4   =0.0323212;
retP5   =0.034221;
retP6   =0.0507534;
retP7   =0.253091;
retR    =0.882979;
retR1   =0.0289149;
retR2   =0.050281;
retR3   =0.0616508;
retR4   =0.0647611;
retR5   =0.0685676;
retR6   =0.101693;
retR7   =0.507111;
REV     =7.15391;
Gbudg   =7.15391;
Gt      =2.14617;
xpreE1  =0.0000239636;
xpreE2  =0.0000493217;
xpreE3  =0.0000602106;
xpreE4  =0.0000631892;
xpreE5  =0.000066837;
xpreE6  =0.0000985903;
xpreE7  =0.000469714;
xpreF1  =0.0000395295;
xpreF2  =0.0000684481;
xpreF3  =0.0000835595;
xpreF4  =0.0000876932;
xpreF5  =0.0000927556;
xpreF6  =0.000136822;
xpreF7  =0.000651863;
xpreM1  =0.00139764;
xpreM2  =0.00242033;
xpreM3  =0.00295497;
xpreM4  =0.00310122;
xpreM5  =0.00328032;
xpreM6  =0.00483986;
xpreM7  =0.0231092;
xpreP1  =0.00000895886;
xpreP2  =0.0000155129;
xpreP3  =0.0000189377;
xpreP4  =0.0000198746;
xpreP5  =0.0000210219;
xpreP6  =0.000031009;
xpreP7  =0.000175604;
xpreR1  =0.0000105877;
xpreR2  =0.0000183334;
xpreR3  =0.0000223809;
xpreR4  =0.0000234881;
xpreR5  =0.000024844;
xpreR6  =0.0000435598;
xpreR7  =0.000207532;
Xpre    =0.0437377;
spostE1 =0.000230401;
spostE2 =0.000398954;
spostE3 =0.000487033;
spostE4 =0.000511126;
spostE5 =0.000540633;
spostE6 =0.000797479;
spostE7 =0.00379943;
spostF1 =0.000298166;
spostF2 =0.000516294;
spostF3 =0.000630277;
spostF4 =0.000661457;
spostF5 =0.000699642;
spostF6 =0.00103203;
spostF7 =0.00491691;
spostM1 =0.000352377;
spostM2 =0.000610166;
spostM3 =0.000744873;
spostM4 =0.000781722;
spostM5 =0.00082685;
spostM6 =0.00121967;
spostM7 =0.00581089;
spostP1 =0.000474354;
spostP2 =0.000821377;
spostP3 =0.00100271;
spostP4 =0.00105232;
spostP5 =0.00111307;
spostP6 =0.00164187;
spostP7 =0.00782235;
Spost   =0.0397944;
cpostE1 =0.00347912;
cpostE2 =0.00603048;
cpostE3 =0.00736185;
cpostE4 =0.00772604;
cpostE5 =0.00817205;
cpostE6 =0.0120545;
cpostE7 =0.0574311;
cpostF1 =0.00450415;
cpostF2 =0.00780779;
cpostF3 =0.00953153;
cpostF4 =0.0100031;
cpostF5 =0.0105805;
cpostF6 =0.0156072;
cpostF7 =0.0743572;
cpostM1 =0.00641473;
cpostM2 =0.0111077;
cpostM3 =0.0135602;
cpostM4 =0.0142311;
cpostM5 =0.0150527;
cpostM6 =0.0222049;
cpostM7 =0.105831;
cpostP1 =0.00714889;
cpostP2 =0.0123788;
cpostP3 =0.0151117;
cpostP4 =0.0158593;
cpostP5 =0.0167748;
cpostP6 =0.0247442;
cpostP7 =0.117911;
cpostR1 =0.935206;
cpostR2 =0.934259;
cpostR3 =0.933764;
cpostR4 =0.933629;
cpostR5 =0.933463;
cpostR6 =0.932019;
cpostR7 =0.915149;
Cpost   =7.15046;
cpostE  =0.102255;
cpostF  =0.132391;
cpostM  =0.188402;
cpostP  =0.209929;
cpostR  =6.51749;
spostE  =0.00676505;
spostF  =0.00875477;
spostM  =0.0103466;
spostP  =0.0139281;
xpreE   =0.000831826;
xpreF   =0.00116067;
xpreM   =0.0411035;
xpreP   =0.000290919;
xpreR   =0.000350726;
z=0.5;
end;

shock_vals_L=cumprod((1+n)*ones(@{simulation_periods},1))
shock_vals_A =cumprod((1+g)*ones(@{simulation_periods},1))
shocks; 
var A;
periods 1:@{simulation_periods};
values (shock_vals_A);
var L;
periods 1:@{simulation_periods};
values (shock_vals_L);
end;

steady;
simul(periods=@{simulation_periods});

