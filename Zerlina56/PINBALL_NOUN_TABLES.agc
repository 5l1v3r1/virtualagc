### FILE="Main.annotation"
## Copyright:   Public domain.
## Filename:    PINBALL_NOUN_TABLES.agc
## Purpose:     A log section of Zerlina 56, the final revision of
##              Don Eyles's offline development program for the variable 
##              guidance period servicer. It also includes a new P66 with LPD 
##              (Landing Point Designator) capability, based on an idea of John 
##              Young's. Neither of these advanced features were actually flown,
##              but Zerlina was also the birthplace of other big improvements to
##              Luminary including the terrain model and new (Luminary 1E)
##              analog display programs. Zerlina was branched off of Luminary 145,
##              and revision 56 includes all changes up to and including Luminary
##              183. It is therefore quite close to the Apollo 14 program,
##              Luminary 178, where not modified with new features.
## Reference:   pp. 306-324
## Assembler:   yaYUL
## Contact:     Ron Burkey <info@sandroid.org>.
## Website:     www.ibiblio.org/apollo/index.html
## Mod history: 2017-07-28 MAS  Created from Luminary 210.
##              2017-08-19 MAS  Updated for Zerlina 56.

## Page 306
# THE FOLLOWING REFERS TO THE NOUN TABLES


# COMPONENT CODE NUMBER           INTERPRETATION

# 00000                           1 COMPONENT
# 00001                           2 COMPONENT
# 00010                           3 COMPONENT
# X1XXX                           BIT4 = 1. DECIMAL ONLY
# 1XXXX                           BIT5 = 1. NO LOAD
# END OF COMPONENT CODE NUMBERS


# SF ROUTINE CODE NUMBER          INTERPRETATION

# 00000    OCTAL ONLY
# 00001    STRAIGHT FRACTIONAL
# 00010    CDU DEGREES (XXX.XX)
# 00011    ARITHMETIC SF
# 00100    ARITH DP1   OUT(MULT BY 2EXP14 AT END)    IN(STRAIGHT)
# 00101    ARITH DP2   OUT(STRAIGHT)                 IN(SL 7 AT END)
# 00110    LANDING RADAR POSITION (+0000X)
# 00111    ARITH DP3   OUT ( SL 7 AT END)       IN ( STRAIGHT)
# 01000    WHOLE HOURS IN R1, WHOLE MINUTES (MOD 60) IN R2,
#             SECONDS (MOD 60) 0XX.XX IN R3. *** ALARMS IF USED WITH OCTAL
# 01001    MINUTES (MOD 60) IN D1D2, D3 BLANK, SECONDS (MOD 60) IN D4D5
#                         LIMITS TO 59B59 IF MAG EXCEEDS THIS VALUE.
#                         ALARMS IF USED WITH OCTAL  ********  IN (ALARM)
# 01010    ARITH DP4   OUT (STRAIGHT)                  IN (SL 3 AT END)
# 01011    ARITH1 SF   OUT(MULT BY 2EXP14 AT END)    IN(STRAIGHT)
# 01100    2 INTEGERS IN D1D2, D4D5, D3 BLANK.
#                         ALARMS IF USED WITH OCTAL  ********  IN (ALARM)
# 01101    360-CDU DEGREES (XXX.XX)
# 01110    RR RANGE       15 BIT MAG TO DP, THEN SCALE *******  IN (ALARM)
# 01111    RR RANGE RATE  15 BIT MAG TO DP, THEN SCALE *******  IN (ALARM)
# END OF SF ROUTINE CODE NUMBERS


# SF CONSTANT CODE NUMBER         INTERPRETATION

# 00000                           WHOLE                       USE ARITH
# 00000                           DP TIME SEC (XXX.XX SEC)    USE ARITHDP1
# 00000                           LR POSITION (+0000X)     USE LR POSITION
# 00001                           SPARE
# 00010                           CDU DEGREES              USE CDU DEGREES
# 00010                           360-CDU DEGREES      USE 360-CDU DEGREES
# 00011                           DP DEGREES (90) XX.XXX DEG  USE ARITHDP3
# 00100                           DP DEGREES (360) XXX.XX DEG USE ARITHDP4
# 00101                           DEGREES (180) XXX.XX DEG    USE ARITH
# 00101                           OPTICAL TRACKER AZIMUTH ANGLE(XXX.XXDEG)
## Page 307
#                                                             USE ARITHDP1
# 00110                           WEIGHT2 (XXXXX. LBS)        USE ARITH1
# 00111                           POSITION5 (XXX.XX NAUTICAL MILES)
#                                                             USE ARITHDP1
# 01000                           POSITION4 (XXXX.X NAUTICAL MILES)
#                                                             USE ARITHDP3
# 01001                           VELOCITY2 (XXXXX. FT/SEC)   USE ARITHDP4
# 01010                           VELOCITY3 (XXXX.X FT/SEC)   USE ARITHDP3
# 01011                           ELEVATION DEGREES(89.999MAX) USE ARITH
# 01100                           RENDEZVOUS RADAR RANGE (XXX.XX NAUT MI)
#                                                             USE RR RANGE
# 01101                           RENDEZVOUS RADAR RANGE RATE(XXXX.XFT/SEC
#                                                        USE RR RANGE RATE
# 01110                           LANDING RADAR ALTITUDE(XXXXX.FEET)
#                                                             USE ARITHDP1
# 01111                           INITIAL/FINAL ALTITUDE(XXXXX.FEET)
#                                                             USE ARITHDP1
# 10000                           ALTITUDE RATE (XXXXX.FT/SEC)   USE ARITH
# 10001                           FORWARD/LATERAL VELOCITY(XXXXX.FEET/SEC)
#                                                                USE ARITH
# 10010                           ROTATIONAL HAND CONTROLLER ANGLE RATES
#                                       XXXXX.DEG/SEC            USE ARITH
# 10011                           LANDING RADAR VELX(XXXXX.FEET/SEC)
#                                                             USE ARITHDP1
# 10100                           LANDING RADAR VELY(XXXXX.FEET/SEC)
#                                                             USE ARITHDP1
# 10101                           LANDING RADAR VELZ(XXXXX.FEET/SEC)
#                                                             USE ARITHDP1
# 10110                           POSITION7 (XXXX.X NAUT MI)  USE ARITHDP4
# 10111                           TRIM DEGREES2 (XXX.XX DEG)  USE ARITH
# 11000                           COMPUTED ALTITUDE (XXXXX. FEET)
#                                                             USE ARITHDP1
# 11001                           DP DEGREES (XXXX.X DEG)     USE ARITHDP3
# 11010                           POSITION9 (XXXXX. FT)       USE ARITHDP3
# 11011                           VELOCITY4 (XXXX.X FT/SEC)   USE ARITHDP2
# 11100                           RADIANS (XX.XXX RADIANS)    USE ARITHDP4
# 11101                           VELOCITY5 (XXXX.X FT/SEC)   USE ARITHDP3
## The following two lines are marked as having been added between ZERLAID.000 and ZERLAID.001
# 11110                           COMPUTED ALTITUDE 2 (XXXXX. FEET)
#                                                             USE ARITHDP3
# END OF SF CONSTANT CODE NUMBERS


# FOR GREATER THAN SINGLE PRECISION SCALES, PUT ADDRESS OF MAJOR PART INTO
# NOUN TABLES.
# OCTAL LOADS PLACE +0 INTO MAJOR PART, DATA INTO MINOR PART.
# OCTAL DISPLAYS SHOW MINOR PART ONLY.
# TO GET AT BOTH MAJOR AND MINOR PARTS(IN OCTAL), USE NOUN 01.


# A NOUN MAY BE DECLARED :DECIMAL ONLY: BY MAKING BIT4=1 OF ITS COMPONENT
## Page 308
# CODE NUMBER. IF THIS NOUN IS USED WITH ANY OCTAL DISPLAY VERB, OR IF
# DATA IS LOADED IN OCTAL, IT ALARMS.

# IN LOADING AN :HOURS, MINUTES, SECONDS: NOUN, ALL 3 WORDS MUST BE
# LOADED, OR ALARM.
# ALARM IF AN ATTEMPT IS MADE TO LOAD :SPLIT MINUTES/SECONDS: (MMBSS).
# THIS IS USED FOR DISPLAY ONLY.

## Page 309
# THE FOLLOWING ROUTINES ARE FOR READING THE NOUN TABLES AND THE SF TABLES
# (WHICH ARE IN A SEPARATE BANK FROM THE REST OF PINBALL). THESE READING
# ROUTINES ARE IN THE SAME BANK AS THE TABLES. THEY ARE CALLED BY DXCH Z.


# LODNNTAB LOADS NNADTEM WITH THE NNADTAB ENTRY, NNTYPTEM WITH THE
# NNTYPTAB ENTRY. IF THE NOUN IS MIXED, IDAD1TEM IS LOADED WITH THE FIRST
# IDADDTAB ENTRY, IDAD2TEM THE SECOND IDADDTAB ENTRY, IDAD3TEM THE THIRD
# IDADDTAB ENTRY, RUTMXTEM WITH THE RUTMXTAB ENTRY. MIXBR IS SET FOR
# MIXED OR NORMAL NOUN.

                BANK    6
                SETLOC  PINBALL3
                BANK
                COUNT*  $$/NOUNS
LODNNTAB        DXCH    IDAD2TEM                # SAVE RETURN INFO IN IDAD2TEM, IDAD3TEM.
                INDEX   NOUNREG
                CAF     NNADTAB
                TS      NNADTEM
                INDEX   NOUNREG
                CAF     NNTYPTAB
                TS      NNTYPTEM
                CS      NOUNREG
                AD      MIXCON
                EXTEND
                BZMF    LODMIXNN                # NOUN NUMBER G/E FIRST MIXED NOUN
                CAF     ONE                     # NOUN NUMBER L/ FIRST MIXED NOUN
                TS      MIXBR                   # NORMAL.  +1 INTO MIXBR.
                TC      LODNLV
LODMIXNN        CAF     TWO                     # MIXED.  +2 INTO MIXBR.
                TS      MIXBR
                INDEX   NOUNREG
                CAF     RUTMXTAB -40D           # FIRST MIXED NOUN = 40.
                TS      RUTMXTEM
                CAF     LOW10
                MASK    NNADTEM
                TS      Q                       # TEMP
                INDEX   A
                CAF     IDADDTAB
                TS      IDAD1TEM                # LOAD IDAD1TEM WITH FIRST IDADDTAB ENTRY
                EXTEND
                INDEX   Q                       # LOAD IDAD2TEM WITH 2ND IDADDTAB ENTRY
                DCA     IDADDTAB +1             # LOAD IDAD3TEM WITH 3RD IDADDTAB ENTRY.
LODNLV          DXCH    IDAD2TEM                # PUT RETURN INFO INTO A, L.
                DXCH    Z
                
MIXCON          =       OCT50                   # (DEC 40)
# GTSFOUT LOADS SFTEMP1, SFTEMP2 WITH THE DP SFOUTAB ENTRIES.

GTSFOUT         DXCH    SFTEMP1                 # 2X(SFCONUM) ARRIVES IN SFTEMP1.
## Page 310
                EXTEND
                INDEX   A
                DCA     SFOUTAB
SFCOM           DXCH    SFTEMP1
                DXCH    Z

                
# GTSFIN LOADS SFTEMP1, SFTEMP2 WITH THE DP SFINTAB ENTRIES.

GTSFIN          DXCH    SFTEMP1                 # 2X(SFCONUM) ARRIVES IN SFTEMP1.
                EXTEND
                INDEX   A
                DCA     SFINTAB
                TCF     SFCOM
                

                                                # NN  NORMAL NOUNS
NNADTAB         OCT     00000                   # 00 NOT IN USE
                OCT     40000                   # 01 SPECIFY MACHINE ADDRESS (FRACTIONAL)
                OCT     40000                   # 02 SPECIFY MACHINE ADDRESS (WHOLE)
                OCT     40000                   # 03 SPECIFY MACHINE ADDRESS (DEGREES)
                ECADR   DSPTEM1                 # 04 ANGULAR ERROR/DIFFERENCE
                ECADR   DSPTEM1                 # 05 ANGULAR ERROR/DIFFERENCE
                ECADR   OPTION1                 # 06 OPTION CODE
                ECADR   XREG                    # 07 ECADR OF WORD TO BE MODIFIED
                                                #    ONES FOR BITS TO BE MODIFIED
                                                #    1 TO SET OR 0 TO RESET SELECTED BITS
                ECADR   ALMCADR                 # 08 ALARM DATA
                ECADR   FAILREG                 # 09 ALARM CODES
                OCT     77776                   # 10 CHANNEL TO BE SPECIFIED
                ECADR   TCSI                    # 11 TIG OF CSI (HRS,MIN,SEC)
                ECADR   OPTIONX                 # 12 OPTION CODE
                                                #       (USED BY EXTENDED VERBS ONLY)
                ECADR   TCDH                    # 13 TIG OF CDH (HRS,MIN,SEC)
                ECADR   DSPTEMX                 # 14 CHECKLIST
                                                #       (USED BY EXTENDED VERBS ONLY)
                OCT     77777                   # 15 INCREMENT MACHINE ADDRESS
                ECADR   DSPTEMX                 # 16 TIME OF EVENT (HRS,MIN,SEC)
                OCT     00000                   # 17 SPARE
                ECADR   FDAIX                   # 18 AUTO MANEUVER BALL ANGLES
                OCT     00000                   # 19 SPARE
                ECADR   CDUX                    # 20 ICDU ANGLES
                ECADR   PIPAX                   # 21 PIPAS
                ECADR   THETAD                  # 22 NEW ICDU ANGLES
                OCT     00000                   # 23 SPARE
                ECADR   DSPTEM2 +1              # 24 DELTA TIME FOR AGC CLOCK(HRS,MIN,SEC)
                ECADR   DSPTEM1                 # 25 CHECKLIST
                                                #       (USED WITH PLEASE PERFORM ONLY)
                ECADR   DSPTEM1                 # 26 PRIO/DELAY, ADRES, BBCON
                ECADR   SMODE                   # 27 SELF TEST ON/OFF SWITCH
## Page 311
                OCT     00000                   # 28 SPARE
                OCT     00000                   # 29 SPARE
                OCT     0                       # 30 SPARE
                OCT     0                       # 31 SPARE
                ECADR   -TPER                   # 32 TIME TO PERIGEE (HRS,MIN,SEC)
                ECADR   TIG                     # 33 TIME OF IGNITION (HRS,MIN(SEC)
                ECADR   DSPTEM1                 # 34 TIME OF EVENT (HRS,MIN,SEC)
                ECADR   TTOGO                   # 35 TIME TO GO TO EVENT (HRS,MIN,SEC)
                ECADR   TIME2                   # 36 TIME OF AGC CLOCK (HRS,MIN,SEC)
                ECADR   TTPI                    # 37 TIG OF TPI (HRS,MIN,SEC)
                ECADR   TET                     # 38 TIME OF STATE BEING INTEGRATED
                OCT     00000                   # 39 SPARE
# END OF NNADTAB FOR NORMAL NOUNS


                                                # NN  MIXED NOUNS
                OCT     64000                   # 40 TIME TO IGNITION/CUTOFF
                                                #    VG
                                                #    DELTA V (ACCUMULATED)
                OCT     02003                   # 41 TARGET  AZIMUTH
                                                #            ELEVATION
                OCT     24006                   # 42 APOGEE
                                                #    PERIGEE
                                                #    DELTA V (REQUIRED)
                OCT     24011                   # 43 LATITUDE
                                                #    LONGITUDE
                                                #    ALTITUDE
                OCT     64014                   # 44 APOGEE
                                                #    PERIGEE
                                                #    TFF
                OCT     64017                   # 45 MARKS
                                                #    TTI OF NEXT BURN
                                                #    MGA
                OCT     00022                   # 46 AUTOPILOT CONFIGURATION
                OCT     22025                   # 47 LEM WEIGHT
                                                #    CSM WEIGHT
                OCT     22030                   # 48 GIMBAL PITCH TRIM
                                                #    GIMBAL ROLL TRIM
                OCT     24033                   # 49 DELTA R
                                                #    DELTA V
                                                #    RADAR DATA SOURCE CODE
                OCT     0                       # 50 SPARE
                OCT     22041                   # 51 S-BAND ANTENNA PITCH
                                                #                   YAW
                OCT     00044                   # 52 CENTRAL ANGLE OF ACTIVE VEHICLE
                OCT     00000                   # 53 SPARE
                OCT     24052                   # 54 RANGE
                                                #    RANGE RATE
                                                #    THETA
                OCT     24055                   # 55 NO. OF APSIDAL CROSSINGS
## Page 312
                                                #    ELEVATION ANGLE
                                                #    CENTRAL ANGLE
                OCT     02060                   # 56 RR LOS AZIMUTH
                                                #           ELEVATION
                OCT     00000                   # 57 SPARE
                OCT     24066                   # 58 PERIGEE ALT
                                                #    DELTA V TPI
                                                #    DELTA V TPF
                OCT     24071                   # 59 DELTA VELOCITY LOS
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     64074                   # 60 FORWARD VELOCITY - LPD ANGLE
                                                #    ALTITUDE RATE
                                                #    COMPUTED ALTITUDE
                OCT     64077                   # 61 TIME TO GO IN BRAKING PHASE
                                                #    TIME TO IGNITION
                                                #    CROSS RANGE DISTANCE
                OCT     64102                   # 62 ABSOLUTE VALUE OF VELOCITY
                                                #    TIME TO IGNITION
                                                #    DELTA V (ACCUMULATEDj
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     64105                   # 63 LR ALTITUDE MINUS COMPUTED ALTITUDE
                                                #    ALTITUDE RATE
                                                #    COMPUTED ALTITUDE
                OCT     64110                   # 64 TIME LEFT FOR REDESIGNATION-LPD ANGLE
                                                #    ALTITUDE RATE
                                                #    COMPUTED ALTITUDE
                OCT     24113                   # 65 SAMPLED AGC TIME (HRS,MIN,SEC)
                                                #    (FETCHED IN INTERRUPT)
                OCT     62116                   # 66 LR RANGE
                                                #       POSITION
                OCT     04121                   # 67 LRVX
                                                #    LRVY
                                                #    LRVZ
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     64124                   # 68 SM Z-AXIS RANGE TO LANDING SITE
                                                #    TIME TO GO IN BRAKING PHASE
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                                                #    ABSOLUTE VALUE OF VELOCITY
                OCT     24127                   # 69 LANDING SITE CORRECTION, Z-COMPONENT
                                                #    LANDING SITE CORRECTION, Y-COMPONENT
                                                #    LANDING SITE CORRECTION, X-COMPONENT
                OCT     04132                   # 70 AOT DETENT CODE/STAR CODE
                OCT     04135                   # 71 AOT DETENT CODE/STAR CODE
                OCT     02140                   # 72 RR  360 - TRUNNION ANGLE
                                                #        SHAFT ANGLE
                OCT     02143                   # 73 NEW RR  360 - TRUNNION ANGLE
                                                #                  SHAFT ANGLE
                OCT     64146                   # 74 TIME TO IGNITION
                                                #    YAWAFTER VEHICLE RISE
                                                #    PITCH AFTER VEHICLE RISE
                OCT     64151                   # 75 DELTA ALTITUDE CDH
                                                #    DELTA TIME (CDH-CSI OR TPI-CDH)
                                                #    DELTA TIME (TPI-CDH OR TPI-NOMTPI)
                OCT     24154                   # 76 DESIRED HORIZONTAL VELOCITY
## Page 313
                                                #    DESIRED RADIAL VELOCITY
                                                #    CROSS-RANGE DISTANCE
                OCT     62157                   # 77 TIME TO ENGINE CUTOFF
                                                #    VELOCITY NORMAL TO CSM PLANE
                OCT     64162                   # 78 RR RANGE
                                                #       RANGE RATE
                                                #    TIME FROM IGNITION
                OCT     24165                   # 79 CURSOR ANGLE
                                                #    SPIRAL ANGLE
                                                #    POSITION CODE
                OCT     02170                   # 80 DATA INDICATOR
                                                #    OMEGA
                OCT     24173                   # 81 DELTA V (LV)
                OCT     24176                   # 82 DELTA V (LV)
                OCT     24201                   # 83 DELTA V (BODY)
                OCT     24204                   # 84 DELTA V (OTHER VEHICLE)
                OCT     24207                   # 85 VG (BODY)
                OCT     24212                   # 86 VG (LV)
                OCT     02215                   # 87 BACKUP OPTICS LOS AZIMUTH
                                                #                      ELEVATION
                OCT     24220                   # 88 HALF UNIT SUN OR PLANET VECTOR
                OCT     24223                   # 89 LANDMARK LATITUDE
                                                #             LONGITUDE/2
                                                #             ALTITUDE
                OCT     24226                   # 90 Y
                                                #    Y DOT
                                                #    PSI
                OCT     04231                   # 91 ALTITUDE
                                                #    VELOCITY
                                                #    FLIGHT PATH ANGLE
                OCT     04234                   # 92 PCT FTP(10.5KLB) AT PRESENT THRUST
                                                #    ALTITUDE RATE
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                                                #    COMPUTED ALTITUDE
                OCT     04237                   # 93 DELTA GYRO ANGLES
## The following three lines are marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     64242                   # 94 VGX (BODY)
                                                #    ALTITUDE RATE
                                                #    COMPUTED ALTITUDE
                OCT     0                       # 95 SPARE
                OCT     0                       # 96 SPARE
                OCT     04253                   # 97 SYSTEM TEST INPUTS
                OCT     04256                   # 98 SYSTEM TEST RESULTS
                OCT     24261                   # 99 RMS IN POSITION
                                                #    RMS IN VELOCITY
                                                #    RMS IN BIAS
# END OF NNADTAB FOR MIXED NOUNS


                                                # NN        NORMAL NOUNS
NNTYPTAB        OCT     00000                   # 00 NOT IN USE
                OCT     04040                   # 01 3COMP  FRACTIONAL
## Page 314
                OCT     04140                   # 02 3COMP  WHOLE
                OCT     04102                   # 03 3COMP  CDU DEGREES
                OCT     00504                   # 04 1COMP  DPDEG(360)
                OCT     00504                   # 05 1COMP  DPDEG(360)
                OCT     04000                   # 06 3COMP  OCTAL ONLY
                OCT     04000                   # 07 3COMP  OCTAL ONLY
                OCT     04000                   # 08 3COMP  OCTAL ONLY
                OCT     04000                   # 09 3COMP  OCTAL ONLY
                OCT     00000                   # 10 1COMP  OCTAL ONLY
                OCT     24400                   # 11 3COMP  HMS (DEC ONLY)
                OCT     02000                   # 12 2COMP  OCTAL ONLY
                OCT     24400                   # 13 3COMP  HMS (DEC ONLY)
                OCT     04140                   # 14 3COMP  WHOLE
                OCT     00000                   # 15 1COMP  OCTAL ONLY
                OCT     24400                   # 16 3COMP  HMS (DEC ONLY)
                OCT     0                       # 17       SPARE
                OCT     04102                   # 18 3COMP  CDU DEG
                OCT     00000                   # 19        SPARE
                OCT     04102                   # 20 3COMP  CDU DEGREES
                OCT     04140                   # 21 3COMP  WHOLE
                OCT     04102                   # 22 3COMP  CDU DEGREES
                OCT     00000                   # 23        SPARE
                OCT     24400                   # 24 3COMP  HMS (DEC ONLY)
                OCT     04140                   # 25 3COMP  WHOLE
                OCT     04000                   # 26 3COMP  OCTAL ONLY
                OCT     00140                   # 27 1COMP  WHOLE
                OCT     00000                   # 28        SPARE
                OCT     00000                   # 29        SPARE
                OCT     0                       # 30 SPARE
                OCT     0                       # 31 SPARE
                OCT     24400                   # 32 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 33 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 34 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 35 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 36 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 37 3COMP  HMS (DEC ONLY)
                OCT     24400                   # 38 3COMP  HMS (DEC ONLY)
                OCT     00000                   # 39        SPARE
# END OF NNTYPTAB FOR NORMAL NOUNS


                                                # NN   MIXED NOUNS
                OCT     24500                   # 40 3COMP  MIN/SEC, VEL3, VEL3
                                                #           (NO LOAD, DEC ONLY) 
                OCT     00542                   # 41 2COMP  CDU DEG, ELEV DEG
                OCT     24410                   # 42 3COMP  POS4, POS4, VEL3
                                                #           (DEC ONLY)
                OCT     20204                   # 43 3COMP  DPDEG(360), DPDEG(360), POS4
                                                #           (DEC ONLY)
                OCT     00410                   # 44 3COMP  POS4, POS4, MIN/SEC
## Page 315
                                                #           (NO LOAD, DEC ONLY)
                OCT     10000                   # 45 3COMP  WHOLE, MIN/SEC, DPDEG(360)
                                                #           (NO LOAD, DEC ONLY)
                OCT     00000                   # 46 2COMP  OCTAL ONLY
                OCT     00306                   # 47 2COMP WEIGHT2 FOR EACH
                                                #           (DEC ONLY)
                OCT     01367                   # 48 2COMP  TRIM DEG2 FOR EACH
                                                #           (DEC ONLY)
                OCT     00507                   # 49 3COMP  POS5, VEL3, WHOLE
                                                #           (DEC ONLY)
                OCT     0                       # 50        SPARE
                OCT     00204                   # 51 2COMP  DPDEG(360), DPDEG(360)
                                                #           (DEC ONLY)
                OCT     00004                   # 52 1COMP  DPDEG(360)
                OCT     00000                   # 53        SPARE
                OCT     10507                   # 54 3COMP  POS5, VEL3, DPDEG(360)
                                                #           (DEC ONLY)
                OCT     10200                   # 55 3COMP  WHOLE, DPDEG(360), DPDEG(360)
                                                #           (DEC ONLY)
                OCT     00204                   # 56 2COMP  DPDEG(360), DPDEG(360)
                OCT     00000                   # 57        SPARE
                                                #           (DEC ONLY)
                OCT     24510                   # 58 3COMP  POS4, VEL3, VEL3
                                                #           (DEC ONLY)
                OCT     24512                   # 59 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     75640                   # 60 3COMP  2INT, VEL5, COMP ALT 2
                                                #           (DEC ONLY)
                OCT     54000                   # 61 3COMP  MIN/SEC, MIN/SEC, POS7
                                                #           (NO LOAD, DEC ONLY)
                OCT     24012                   # 62 3COMP  VEL3, MIN/SEC, VEL3
                                                #           (NO LOAD, DEC ONLY)
## The following two lines are marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     60530                   # 63 3COMP  COMP ALT, VEL3, COMP ALT
                                                #           (DEC ONLY)
                OCT     60500                   # 64 3COMP  2INT, VEL3, COMP ALT
                                                #           (NO LOAD, DEC ONLY)
                OCT     00000                   # 65 3COMP  HMS (DEC ONLY)
                OCT     00016                   # 66 2COMP  LANDING RADAR ALT, POSITION
                                                #           (NO LOAD, DEC ONLY)
                OCT     53223                   # 67 3COMP LANDING RADAR VELX, Y, Z
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     24026                   # 68 3COMP  POS7, MIN/SEC, VEL3
                                                #           (NO LOAD, DEC ONLY)
                OCT     61430                   # 69 3COMP  COMP ALT, COMP ALT, COMP ALT
                                                #           (DEC ONLY)
                OCT     0                       # 70 3COMP  OCTAL ONLY FOR EACH
                OCT     0                       # 71 3COMP  OCTAL ONLY FOR EACH
                OCT     00102                   # 72 2COMP  360-CDU DEG, CDU DEG
                OCT     00102                   # 73 2COMP  360-CDU DEG, CDU DEG
                OCT     10200                   # 74 3COMP  MIN/SEC, DPDEG(360),DPDEG(360)
                                                #           (NO LOAD, DEC ONLY)
## Page 316
                OCT     00010                   # 75 3COMP  POS4, MIN/SEC, MIN/SEC
                                                #           (NO LOAD, DEC ONLY)
                OCT     20512                   # 76 3COMP  VEL3, VEL3, POS4
                                                #           (DEC ONLY)
                OCT     00500                   # 77 2COMP  MIN/SEC, VEL3
                                                #           (NO LOAD, DEC ONLY)
                OCT     00654                   # 78 3COMP  RR RANGE, RR RANGE RATE, M/S
                                                #           (NO LOAD, DEC ONLY)
                OCT     00102                   # 79 3COMP  CDU DEG, CDU DEG, WHOLE
                                                #           (DEC ONLY)
                OCT     00200                   # 80 2COMP  WHOLE, DPDEG(360)
                OCT     24512                   # 81 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     24512                   # 82 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     24512                   # 83 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     24512                   # 84 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     24512                   # 85 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     24512                   # 86 3COMP  VEL3 FOR EACH
                                                #           (DEC ONLY)
                OCT     00102                   # 87 2COMP  CDU DEG FOR EACH
                OCT     0                       # 88 3COMP  FRAC FOR EACH
                                                #            (DEC ONLY)
                OCT     16143                   # 89 3COMP  DPDEG(90), DPDEG(90), POS5
                                                #           (DEC ONLY)
                OCT     10507                   # 90 3COMP  POS5, VEL3, DPDEG(360)
                                                #           (DEC ONLY)
                OCT     10450                   # 91 3COMP  POS4, VEL2, DPDEG(360)
                OCT     60500                   # 92 3COMP  WHOLE, VEL3, COMP ALT
                OCT     06143                   # 93 3COMP  DPDEG(90) FOR EACH
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     60512                   # 94 3COMP  VEL3, VEL3, COMP ALT
                OCT     0                       # 95        SPARE
                OCT     0                       # 96        SPARE
                OCT     00000                   # 97 3COMP  WHOLE FOR EACH
                OCT     00000                   # 98 3COMP  WHOLE, FRAC, WHOLE
                OCT     71572                   # 99 3COMP  POS9, VEL4, RADIANS
                                                #           (DEC ONLY)
# END OF NNTYPTAB FOR MIXED NOUNS


SFINTAB         OCT     00006                   # WHOLE, DP TIME (SEC)
                OCT     03240
                OCT     00000                   # SPARE
                OCT     00000
                OCT     00000                   # CDU DEGREES, 360-CDU DEGREES
                OCT     00000                   #     (SFCONS IN DEGINSF)
                OCT     10707                   # DP DEGREES (90)
## Page 317
                OCT     03435                   #         UPPED BY 1
                OCT     13070                   # DP DEGREES (360)(POINT BETWN BITS 11-12)
                OCT     34345                   #         UPPED BY 1
                OCT     00005                   # DEGREES (180)
                OCT     21616
                OCT     26113                   # WEIGHT2
                OCT     31713
                OCT     00070                   # POSITION5
                OCT     20460
                OCT     01065                   # POSITION4
                OCT     05740
                OCT     11414                   # VELOCITY2       (POINT BETWN BITS 11-12)
                OCT     31463
                OCT     07475                   # VELOCITY3
                OCT     16051
                OCT     00001                   # ELEVATION DEGREES
                OCT     03434
                OCT     00047                   # RENDEZVOUS RADAR RANGE
                OCT     21135
                OCT     77766                   # RENDEZVOUS RADAR RANGE RATE
                OCT     50711
                2DEC*   .9267840599 E5 B-28*    # LANDING RADAR ALTITUDE
                
                OCT     00002                   # INITIAL/FINAL ALTITUDE
                OCT     23224
                OCT     00014                   # ALTITUDE RATE
                OCT     06500
                2DEC*   1.79500987 E4 B-28*     # FORWARD/LATERAL VELOCITY
                
                OCT     04256                   # ROT HAND CONT ANGLE RATE
                OCT     07071
                2DEC*   -1.552795030 E5 B-28*   # LANDING RADAR VELX
                
                2DEC*   .8250825087 E5 B-28*    # LANDING RADAR VELY
                
                2DEC*   1.153668673 E5 B-28*    # LANDING RADAR VELZ
                
                OCT     04324                   # POSITION7
                OCT     27600
                OCT     00036                   # TRIM DEGREES2
                OCT     20440
                OCT     00035                   # COMPUTED ALTITUDE
                OCT     30400
                OCT     23420                   # DP DEGREES
                OCT     00000
                2DEC    30480 B-19              # POSITION 9
                
                2DEC    30.48 B-7               # VELOCITY4
                
                2DEC    100 B-8                 # RADIANS

## Page 318
                2DEC    .3048 E2 B-5            # VELOCITY5

## The following line is marked as having been added between ZERLAID.000 and ZERLAID.001
                2DEC    .3048 E5 B-15           # COMPUTED ALTITUDE 2
                
                                                # END OF SFINTAB


SFOUTAB         OCT     05174                   # WHOLE, DP TIME (SEC)
                OCT     13261
                OCT     00000                   # SPARE
                OCT     00000
                OCT     00000                   # CDU DEGREES, 360-CDU DEGREES
                OCT     00000                   #     (SFCONS IN DEGOUTSF, 360-CDUO)
                OCT     00714                   # DP DEGREES (90) (POINT BETWN BITS 7-8)
                OCT     31463
                OCT     13412                   # DP DEGREES (360)
                OCT     07534
                OCT     05605                   # DEGREES (180)
                OCT     03656
                OCT     00001                   # WEIGHT2
                OCT     16170
                OCT     00441                   # POSITION5
                OCT     34306
                OCT     07176                   # POSITION4       (POINT BETWN BITS 7-8)
                OCT     21603
                OCT     15340                   # VELOCITY2
                OCT     15340
                OCT     01031                   # VELOCITY3       (POINT BETWN BITS 7-8)
                OCT     21032
                OCT     34631                   # ELEVATION DEGREES
                OCT     23146
                OCT     00636                   # RENDEZVOUS RADAR RANGE
                OCT     14552
                OCT     74552                   # RENDEZVOUS RADAR RANGE RATE
                OCT     70307
                2DEC    1.079 E-5 B14           # LANDING RADAR ALTITUDE
                
                OCT     14226                   # INITIAL/FINAL ALTITUDE
                OCT     31757
                OCT     02476                   # ALTITUDE RATE
                OCT     05531
                2DEC    5.571 E-5 B14           # FORWARD/LATERAL VELOCITY
                
                OCT     00007                   # ROT HAND CONT ANGLE RATE
                OCT     13734
                2DEC    -.6440 E-5 B14          # LANDING RADAR VELX
                
                2DEC    1.212 E-5 B14           # LANDING RADAR VELY
                
                2DEC    .8668 E-5 B14           # LANDING RADAR VELZ

## Page 319
                OCT     34772                   # POSITION7
                OCT     07016
                OCT     01030                   # TRIM DEGREES2
                OCT     33675
                OCT     01046                   # COMPUTED ALTITUDE
                OCT     15700
                OCT     00321                   # DP DEGREES
                OCT     26706
                2DEC    17.2010499 B-7          # POSITION 9
                
                2DEC    .032808399              # VELOCITY4
                
                2DEC    .32                     # RADIANS

## The following line is circled in blue pencil.
                2DEC*   3.280839896 E-2 B-2 *   # VELOCITY5

## The following line is marked as having been added between ZERLAID.000 and ZERLAID.001
                2DEC*   3.280839896 E-5 B8  *   # COMPUTED ALTITUDE 2
                
                                                # END OF SFOUTAB


                                                # NN  SF CONSTANT               SF ROUTINE

IDADDTAB        ECADR   TTOGO                   # 40 MIN/SEC                          M/S
                ECADR   VGDISP                  # 40 VEL3                             DP3
                ECADR   DVTOTAL                 # 40 VEL3                             DP3
                ECADR   DSPTEM1                 # 41 CDU DEG                          CDU
                ECADR   DSPTEM1 +1              # 41 ELEV DEG                         ARTH
                OCT     0                       # 41 SPARE COMPONENT
                ECADR   HAPO                    # 42 POS4                             DP3
                ECADR   HPER                    # 42 POS4                             DP3
                ECADR   VGDISP                  # 42 VEL3                             DP3
                ECADR   LAT                     # 43 DPDEG(360)                       DP4
                ECADR   LONG                    # 43 DPDEG(360)                       DP4
                ECADR   ALT                     # 43 POS4                             DP3
                ECADR   HAPOX                   # 44 POS4                             DP3
                ECADR   HPERX                   # 44 POS4                             DP3
                ECADR   TFF                     # 44 MIN/SEC                          M/S
                ECADR   TRKMKCNT                # 45 WHOLE                            ARTH
                ECADR   TTOGO                   # 45 MIN/SEC                          M/S
                ECADR   +MGA                    # 45 DPDEG(360)                       DP4
                ECADR   DAPDATR1                # 46 OCTAL ONLY                       OCT
                OCT     0                       # 46 SPARE COMPONENT
                OCT     0                       # 46 SPARE COMPONENT
                ECADR   LEMMASS                 # 47 WEIGHT2                         ARTH1
                ECADR   CSMMASS                 # 47 WEIGHT2                         ARTH1
                OCT     0                       # 47 SPARE COMPONENT
                ECADR   PITTIME                 # 48 TRIM DEG2                        ARTH
                ECADR   ROLLTIME                # 48 TRIM DEG2                        ARTH
                OCT     0                       # 48 SPARE COMPONENT
## Page 320
                ECADR   R22DISP                 # 49 POS5                             DP1
                ECADR   R22DISP +2              # 49 VEL3                             DP3
                ECADR   WHCHREAD                # 49 WHOLE                            ARTH
                OCT     0                       # 50 SPARE
                OCT     0                       # 50 SPARE
                OCT     0                       # 50 SPARE
                ECADR   ALPHASB                 # 51 DPDEG(360)                       DP4
                ECADR   BETASB                  # 51 DPDEG(360)                       DP4
                OCT     0                       # 51 SPARE COMPONENT
                ECADR   ACTCENT                 # 52 DPDEG(360)                       DP4
                OCT     00000                   # 52 SPARE COMPONENT
                OCT     00000                   # 52 SPARE COMPONENT
                OCT     00000                   # 53 SPARE
                OCT     00000                   # 53 
                OCT     00000                   # 53 
                ECADR   RANGE                   # 54 POS5                             DP1
                ECADR   RRATE                   # 54 VEL3                             DP3
                ECADR   RTHETA                  # 54 DPDEG(360)                       DP4
                ECADR   NN                      # 55 WHOLE                            ARTH
                ECADR   ELEV                    # 55 DPDEG(360)                       DP4
                ECADR   CENTANG                 # 55 DPDEG(360)                       DP4
                ECADR   RR-AZ                   # 56 DPDEG(360)                       DP4
                ECADR   RR-ELEV                 # 56 DPDEG(360)                       DP4
                OCT     0                       # 56 SPARE COMPONENT
                OCT     0                       # 57 SPARE
                OCT     0                       # 57 SPARE
                OCT     0                       # 57 SPARE
                ECADR   POSTTPI                 # 58 POS4                             DP3
                ECADR   DELVTPI                 # 58 VEL3                             DP3
                ECADR   DELVTPF                 # 58 VEL3                             DP3
                ECADR   DVLOS                   # 59 VEL3                             DP3
                ECADR   DVLOS +2                # 59 VEL3                             DP3
                ECADR   DVLOS +4                # 59 VEL3                             DP3
## The following three lines are marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   FUNNYDSP                # 60 2INT                             2INT
                ECADR   ALTRATE                 # 60 VEL5                             DP3
                ECADR   ALTITUDE                # 60 COMP ALT 2                       DP3
                ECADR   TTFDISP                 # 61 MIN/SEC                          M/S
                ECADR   TTOGO                   # 61 MIN/SEC                          M/S
                ECADR   OUTOFPLN                # 61 POS7                             DP4
                ECADR   ABVEL                   # 62 VEL3                             DP3
                ECADR   TTOGO                   # 62 MIN/SEC                          M/S
                ECADR   DVTOTAL                 # 62 VEL3                             DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   DELTAH                  # 63 COMP ALT                         DP1
                ECADR   HDOTDISP                # 63 VEL3                             DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   HCALC                   # 63 COMP ALT                         DP1
                ECADR   FUNNYDSP                # 64 2INT                             2INT
                ECADR   HDOTDISP                # 64 VEL3                             DP3
                ECADR   HCALC                   # 64 COMP ALT                         DP1
                ECADR   SAMPTIME                # 65 HMS (MIXED ONLY TO KEEP CODE 65) HMS
                ECADR   SAMPTIME                # 65 HMS                              HMS
## Page 321
                ECADR   SAMPTIME                # 65 HMS                              HMS
                ECADR   RSTACK +6               # 66 LANDING RADAR ALT                DP1
                OCT     0                       # 66 LR POSITION                     LRPOS
                OCT     0                       # 66 SPARE COMPONENT
                ECADR   RSTACK                  # 67 LANDING RADAR VELX               DP1
                ECADR   RSTACK +2               # 67 LANDING RADAR VELY               DP1
                ECADR   RSTACK +4               # 67 LANDING RADAR VELZ               DP1
                ECADR   RANGEDSP                # 68 POS7                             DP4
                ECADR   TTFDISP                 # 68 MIN/SEC                          M/S
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   ABVEL                   # 68 VEL3                             DP3
                ECADR   DLANDZ                  # 69 COMP ALT                         DP1
                ECADR   DLANDY                  # 69 COMP ALT                         DP1
                ECADR   DLANDX                  # 69 COMP ALT                         DP1
                ECADR   AOTCODE                 # 70 OCTAL ONLY                       OCT
                ECADR   AOTCODE +1              # 70 OCTAL ONLY                       OCT
                ECADR   AOTCODE +2              # 70 OCTAL ONLY                       OCT
                ECADR   AOTCODE                 # 71 OCTAL ONLY                       OCT
                ECADR   AOTCODE +1              # 71 OCTAL ONLY                       OCT
                ECADR   AOTCODE +2              # 71 OCTAL ONLY                       OCT
                ECADR   CDUT                    # 72 360-CDU DEG                   360-CDU
                ECADR   CDUS                    # 72 CDU DEG                          CDU
                OCT     0                       # 72 SPARE COMPONENT 
                ECADR   TANG                    # 73 360-CDU DEG                   360-CDU
                ECADR   TANG +1                 # 73 CDU DEG                          CDU
                OCT     0                       # 73 SPARE COMPONENT
                ECADR   TTOGO                   # 74 MIN/SEC                          M/S
                ECADR   YAW                     # 74 DPDEG(360)                       DP4
                ECADR   PITCH                   # 74 DPDEG(360)                       DP4
                ECADR   DIFFALT                 # 75 POS4                             DP3
                ECADR   T1TOT2                  # 75 MIN/SEC
                ECADR   T2TOT3                  # 75 MIN/SEC                          M/S
                ECADR   ZDOTD                   # 76 VEL3                             DP3
                ECADR   RDOTD                   # 76 VEL3                             DP3
                ECADR   XRANGE                  # 76 POS4                             DP3
                ECADR   TTOGO                   # 77 MIN/SEC                          M/S
                ECADR   YDOT                    # 77 VEL3                             DP3
                OCT     0                       # 77 SPARE COMPONENT
                ECADR   DNRRANGE                # 78 RR RANGE                     RR RANGE
                ECADR   DNRRDOT                 # 78 RR RANGE RATE           RR RANGE RATE
                ECADR   TTOTIG                  # 78 MIN/SEC                           M/S
                ECADR   CURSOR                  # 79 CDU DEG                          CDU
                ECADR   SPIRAL                  # 79 CDU DEG                          CDU
                ECADR   POSCODE                 # 79 WHOLE                            ARTH
                ECADR   DATAGOOD                # 80 WHOLE                            ARTH
                ECADR   OMEGAD                  # 80 DPDEG(360)                       DP4
                OCT     0                       # 80 SPARE COMPONENT
                ECADR   DELVLVC                 # 81 VEL3                             DP3
                ECADR   DELVLVC +2              # 81 VEL3                             DP3
                ECADR   DELVLVC +4              # 81 VEL3                             DP3
                ECADR   DELVLVC                 # 82 VEL3                             DP3
## Page 322
                ECADR   DELVLVC +2              # 82 VEL3                             DP3
                ECADR   DELVLVC +4              # 82 VEL3                             DP3
                ECADR   DELVIMU                 # 83 VEL3                             DP3
                ECADR   DELVIMU +2              # 83 VEL3                             DP3
                ECADR   DELVIMU +4              # 83 VEL3                             DP3
                ECADR   DELVOV                  # 84 VEL3                             DP3
                ECADR   DELVOV +2               # 84 VEL3                             DP3
                ECADR   DELVOV +4               # 84 VEL3                             DP3
                ECADR   VGBODY                  # 85 VEL3                             DP3
                ECADR   VGBODY +2               # 85 VEL3                             DP3
                ECADR   VGBODY +4               # 85 VEL3                             DP3
                ECADR   DELVLVC                 # 86 VEL3                             DP3
                ECADR   DELVLVC +2              # 86 VEL3                             DP3
                ECADR   DELVLVC +4              # 86 VEL3                             DP3
                ECADR   AZ                      # 87 CDU DEG                          CDU
                ECADR   EL                      # 87 CDU DEG                          CDU
                OCT     0                       # 87 SPARE COMPONENT
                ECADR   STARAD                  # 88 FRAC                             FRAC
                ECADR   STARAD +2               # 88 FRAC                             FRAC
                ECADR   STARAD +4               # 88 FRAC                             FRAC
                ECADR   LANDLAT                 # 89 DPDEG(90)                        DP3
                ECADR   LANDLONG                # 89 DPDEG(90)                        DP3
                ECADR   LANDALT                 # 89 POS5                             DP1
                ECADR   YLEM                    # 90 POS5                              DP1
                ECADR   YDOTLEM                 # 90  VEL3                             DP3
                ECADR   PHILEM                  # 90 DPDEG(360)                        DP4
                ECADR   P21ALT                  # 91 POS4                             DP3
                ECADR   P21VEL                  # 91 VEL2                             DP4
                ECADR   P21GAM                  # 91 DPDEG(360)                       DP4
                ECADR   THRDISP                 # 92 WHOLE                            ARTH
                ECADR   HDOTDISP                # 92 VEL3                             DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   HCALC                   # 92 COMP ALT                         DP1
                ECADR   OGC                     # 93 DPDEG(90)                        DP3
                ECADR   OGC +2                  # 93 DPDEG(90)                        DP3
                ECADR   OGC +4                  # 93 DPDEG(90)                        DP3
## The following three lines are marked as having changed between ZERLAID.000 and ZERLAID.001
                ECADR   VGBODY                  # 94 VEL3                             DP3
                ECADR   HDOTDISP                # 94 VEL3                             DP3
                ECADR   HCALC                   # 94 COMP ALT                         DP1
                OCT     0                       # 95 SPARE
                OCT     0                       # 95 SPARE
                OCT     0                       # 95 SPARE
                OCT     0                       # 96 SPARE
                OCT     0                       # 96 SPARE
                OCT     0                       # 96 SPARE
                ECADR   DSPTEM1                 # 97 WHOLE                            ARTH
                ECADR   DSPTEM1 +1              # 97 WHOLE                            ARTH
                ECADR   DSPTEM1 +2              # 97 WHOLE                            ARTH
                ECADR   DSPTEM2                 # 98 WHOLE                            ARTH
                ECADR   DSPTEM2 +1              # 98 FRAC                             FRAC
                ECADR   DSPTEM2 +2              # 98 WHOLE                            ARTH
## Page 323
                ECADR   WWPOS                   # 99 POS9                             DP3
                ECADR   WWVEL                   # 99 VEL4                             DP2
                ECADR   WWBIAS                  # 99 RADIANS                          DP4
# END OF IDADDTAB


                                                # NN  SF ROUTINES

RUTMXTAB        OCT     16351                   # 40 M/S, DP3, DP3
                OCT     00142                   # 41 CDU, ARTH
                OCT     16347                   # 42 DP3, DP3, DP3
                OCT     16512                   # 43 DP4, DP4, DP3
                OCT     22347                   # 44 DP3, DP3, M/S
                OCT     24443                   # 45 ARTH, M/S, DP4
                OCT     00000                   # 46 OCT
                OCT     00553                   # 47 ARITH1, ARITH1
                OCT     00143                   # 48 ARTH, ARTH
                OCT     06347                   # 49 DP3, DP3, ARTH
                OCT     0                       # 50 SPARE
                OCT     00512                   # 51 DP4, DP4
                OCT     00012                   # 52 DP4
                OCT     00000                   # 53 SPARE
                OCT     24344                   # 54 DP1, DP3, DP4
                OCT     24503                   # 55 ARTH, DP4 , DP4
                OCT     00512                   # 56 DP4, DP4
                OCT     0                       # 57 SPARE
                OCT     16347                   # 58 DP3, DP3, DP3
                OCT     16347                   # 59 DP3, DP3, DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     16354                   # 60 2INT, DP3, DP3
                OCT     24451                   # 61 M/S, M/S, DP4
                OCT     16447                   # 62 DP3, M/S, DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     10344                   # 63 DP1, DP3, DP1
                OCT     10354                   # 64 2INT, DP3, DP1
                OCT     20410                   # 65 HMS, HMS, HMS
                OCT     00304                   # 66 DP1, LRPOS
                OCT     10204                   # 67 DP1, DP1, DP1
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     16452                   # 68 DP4, M/S, DP3
                OCT     10204                   # 69 DP1, DP1, DP1
                OCT     0                       # 70 OCT, OCT, OCT
                OCT     0                       # 71 OCT, OCT, OCT
                OCT     00115                   # 72 360-CDU, CDU
                OCT     00115                   # 73 360-CDU, CDU
                OCT     24511                   # 74M/S, DP4,DP4
                OCT     22447                   # 75 DP3, M/S, M/S
                OCT     16347                   # 76 DP3, DP3, DP3
                OCT     00351                   # 77 M/S, DP3
                OCT     22756                   # 78 RR RANGE, RR RANGE RATE, M/S
                OCT     06102                   # 79 CDU, CDU, ARTH
                OCT     00503                   # 80 ARTH, DP4
                OCT     16347                   # 81 DP3, DP3, DP3
## Page 324
                OCT     16347                   # 82 DP3, DP3, DP3
                OCT     16347                   # 83 DP3, DP3, DP3
                OCT     16347                   # 84 DP3, DP3, DP3
                OCT     16347                   # 85 DP3, DP3, DP3
                OCT     16347                   # 86 DP3, DP3, DP3
                OCT     00102                   # 87 CDU, CDU
                OCT     02041                   # 88 FRAC FOR EACH
                OCT     10347                   # 89 DP3, DP3, DP1
                OCT     24344                   # 90 DP1, DP3, DP4
                OCT     24507                   # 91 DP3, DP4, DP4
                OCT     10343                   # 92 ARTH, DP3, DP1
                OCT     16347                   # 93 DP3, DP3, DP3
## The following line is marked as having changed between ZERLAID.000 and ZERLAID.001
                OCT     10347                   # 94 DP3, DP3, DP1
                OCT     0                       # 95 SPARE
                OCT     0                       # 96 SPARE
                OCT     06143                   # 97 ARTH, ARTH, ARTH
                OCT     06043                   # 98 ARTH, FRAC, ARTH
                OCT     24247                   # 99 DP3, DP2, DP4
# END OF RUTMXTAB


                SBANK=  LOWSUPER