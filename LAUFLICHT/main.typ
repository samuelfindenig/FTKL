#import "../Vorlage/ftkl.typ": FTKL

#show: FTKL.with(
  abgabe: "07.12.2024",
  projekt: "Lauflicht"
)

= Schaltplan:
#table(columns: 1, stroke: none, [],[],[],[],[],
image("schaltplan.PNG"))

#pagebreak()

= Layout
#table(
  columns: (1fr, 1fr), 
  stroke: none,
  align: center,
  [== Top], [== Bottom],
  image("top.png", height: 12cm),
  image("bottom.png",  height: 12cm))

#pagebreak()

= Bestückungsplan \ \ \ 

#align(center)[#image("beschückungsplan.PNG")]

#pagebreak()

= Stückliste
#table(
  columns: 4,
  align: (left, left, center, left + horizon),
  
    [=== Bezeichner], [=== Footprint], [=== Stückzahl], [=== Bezeichnung],
    [$D_(1 - 11)$], [LED_D3.0mm_FlatTop], [11], [LED - Rot],
    [$R_(3 - 13)$], [R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal], [11], [$1k ohm$],
    [$U_1$], [DIP-8_W7.62mm], [1], [NE555P],
    [$R_(1, 2)$], [R_Axial_DIN0309_L9.0mm_D3.2mm P12.70mm_Horizontal], [2], [$10k ohm$],
    [$C_1$], [CP_Radial_D5.0mm_P2.00mm], [1], [$10mu F$],
    [$C_2$], [CP_Radial_Tantal_D4.5mm_P2.5mm],[1],[$10n F$],
    [$J_1$], [USB_C_Receptacle_GCT_USB4085], [1], [USB_C],
    [$U_2$], [DIP-16_W7.62mm], [1], [4017],
    [$R_V_2$], [Potentiometer_Alps_RK09Y11_Single_Horizontal], [1], [$200k ohm$],
  
)



= Kostenabschätzung

#table(
  columns: 6,
  align: ((left + horizon,horizon +left, center + horizon, left + horizon, center+ horizon, center + horizon)),
  
    [=== Bezeichner], [=== Footprint], [=== Stückzahl], [=== Bezeichnung], [=== Einzelp.], [=== Gesamtp.],
    [$D_(1 - 11)$], [LED_D3.0mm_FlatTop], [11], [LED - Rot], [0.10], [1.10],
    [$R_(3 - 13)$], [R_Axial_DIN0309_L9.0mm_D3.2mm\ P12.70mm_Horizontal], [11], [$1k ohm$], [0.05], [0.55],
    [$U_1$], [DIP-8_W7.62mm], [1], [NE555P], [0.50], [0.50],
    [$R_(1, 2)$], [R_Axial_DIN0309_L9.0mm_D3.2mm\ P12.70mm_Horizontal], [2], [$10k ohm$], [0.05], [0.10],
    [$C_1$], [CP_Radial_D5.0mm_P2.00mm], [1], [$10mu F$], [0.20], [0.20],
    [$C_2$], [CP_Radial_Tantal_D4.5mm_P2.5mm], [1], [$10n F$], [0.30], [0.30],
    [$J_1$], [USB_C_Receptacle_GCT_USB4085], [1], [USB_C], [1.50], [1.50],
    [$U_2$], [DIP-16_W7.62mm], [1], [4017], [0.60], [0.60],
    [$R_V_2$], [Potentiometer_Alps_RK09Y11_Single\ Horizontal], [1], [$200k ohm$], [1.00], [1.00],
  
)


#pagebreak()

= DRC
