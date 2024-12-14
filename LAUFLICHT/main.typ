#import "../VORLAGE/ftkl.typ": FTKL

#show: FTKL.with(
  abgabe: "09.12.2024",
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
  image("top.PNG", height: 12cm),
  image("bottom.PNG",  height: 12cm))


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

= Kostenabschätzung

= Kostenabschätzung

#table(
  columns: 7,
  align: ((left + horizon, horizon + left, center + horizon, left + horizon, center + horizon, center + horizon, left + horizon)),
  
    [=== Bezeichner], [=== Footprint], [=== Stückzahl], [=== Bezeichnung], [=== Einzelp.], [=== Gesamtp.], [=== Quelle],
    [$D_(1 - 11)$], [LED_D3.0mm_FlatTop], [11], [LED - Rot], [0.10€], [1.10€], [Mouser],
    [$R_(3 - 13)$], [R_Axial_DIN0309_L9.0mm\ D3.2mm P12.70mm_Horizontal], [11], [$1k ohm$], [0.05€], [0.55€], [Reichelt],
    [$U_1$], [DIP-8_W7.62mm], [1], [NE555P], [0.50€], [0.50€], [Conrad],
    [$R_(1, 2)$], [R_Axial_DIN0309_L9.0mm\ D3.2mm_P12.70mm\ Horizontal], [2], [$10k ohm$], [0.05€], [0.10€], [RS Components],
    [$C_1$], [CP_Radial_D5.0mm\ P2.00mm], [1], [$10mu F$], [0.20€], [0.20€], [DigiKey],
    [$C_2$], [CP_Radial_Tantal\ D4.5mm_P2.5mm], [1], [$10n F$], [0.30€], [0.30€], [Mouser],
    [$J_1$], [USB_C_Receptacle_GCT\ USB4085], [1], [USB_C], [1.50€], [1.50€], [Farnell],
    [$U_2$], [DIP-16_W7.62mm], [1], [4017], [0.60€], [0.60€], [TME],
    [$R_V_2$], [Potentiometer_Alps_RK09Y11\ Single\ Horizontal], [1], [$200k ohm$], [1.00€], [1.00€], [Alps],
    table.cell(colspan: 7, [#table(columns: (1fr, 1fr, 1fr, 0.63fr), stroke: none,[*Summe:*], [], [#align(right)[5.58€]])])
  )


#pagebreak()

= DRC
#set align(center)
#image("drc.JPG", height: 39%)
