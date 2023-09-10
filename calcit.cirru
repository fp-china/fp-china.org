
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/main!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |respo-ui.calcit/ |memof/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1499755354983) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1521129814235) (:by |root) (:text |ui/global)
                  |q $ %{} :Expr (:at 1523070321783) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070324417) (:by |root) (:text |comp-header)
                  |r $ %{} :Expr (:at 1523070424016) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070433191) (:by |root) (:text |comp-content)
                  |t $ %{} :Expr (:at 1523070395903) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070398326) (:by |root) (:text |comp-footer)
        |comp-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1523070433986) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1523070435095) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1523070433986) (:by |root) (:text |comp-content)
              |r $ %{} :Expr (:at 1523070433986) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1523071890018) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1523071903172) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1523071892582) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523071893962) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1523071894282) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523071895262) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1523071895509) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523071895819) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1523071896081) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523071898386) (:by |root) (:text |:background-color)
                                  |j $ %{} :Leaf (:at 1523071900192) (:by |root) (:text |:white)
                  |T $ %{} :Expr (:at 1523070436149) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070436565) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1523070436821) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070437174) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1523070666556) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070667955) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1523070668328) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070668679) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1523070668866) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070671908) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1523070673486) (:by |root) (:text |16)
                                  |r $ %{} :Expr (:at 1523070690000) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070695267) (:by |root) (:text |:max-width)
                                      |j $ %{} :Leaf (:at 1523070709272) (:by |root) (:text |600)
                                  |v $ %{} :Expr (:at 1523070697036) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070697969) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1523070698846) (:by |root) (:text |:auto)
                                  |x $ %{} :Expr (:at 1523070869137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070872282) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1523070878138) (:by |root) (:text |16)
                      |n $ %{} :Expr (:at 1531239763320) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531239765677) (:by |root) (:text |comp-md-block)
                          |j $ %{} :Expr (:at 1536598751720) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561741660985) (:by |rJG4IHzWf) (:text |inline)
                              |j $ %{} :Leaf (:at 1625581569544) (:by |rJG4IHzWf) (:text "|\"events.md")
                          |r $ %{} :Expr (:at 1531239770123) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531239770937) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1531239772074) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531239773362) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1531239773760) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531239774091) (:by |root) (:text |{})
                      |nT $ %{} :Expr (:at 1625581567682) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |=<)
                          |j $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |nil)
                          |r $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |40)
                      |nb $ %{} :Expr (:at 1636820456738) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636820456738) (:by |rJG4IHzWf) (:text |comp-md-block)
                          |j $ %{} :Expr (:at 1636820456738) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636820456738) (:by |rJG4IHzWf) (:text |inline)
                              |j $ %{} :Leaf (:at 1636820462942) (:by |rJG4IHzWf) (:text "|\"langs.md")
                          |r $ %{} :Expr (:at 1636820456738) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636820456738) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1636820456738) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636820456738) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1636820456738) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636820456738) (:by |rJG4IHzWf) (:text |{})
                      |nj $ %{} :Expr (:at 1625581567682) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |=<)
                          |j $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |nil)
                          |r $ %{} :Leaf (:at 1625581567682) (:by |rJG4IHzWf) (:text |40)
                      |o $ %{} :Expr (:at 1531239763320) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531239765677) (:by |root) (:text |comp-md-block)
                          |j $ %{} :Expr (:at 1536598751720) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561741660985) (:by |rJG4IHzWf) (:text |inline)
                              |j $ %{} :Leaf (:at 1536598757336) (:by |root) (:text "|\"videos.md")
                          |r $ %{} :Expr (:at 1531239770123) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531239770937) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1531239772074) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531239773362) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1531239773760) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531239774091) (:by |root) (:text |{})
                      |p $ %{} :Expr (:at 1531240029052) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531240029636) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1531240030621) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1536599038857) (:by |root) (:text |40)
                      |r $ %{} :Expr (:at 1523070438813) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070441950) (:by |root) (:text |comp-md-block)
                          |j $ %{} :Expr (:at 1536598726223) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1561741662356) (:by |rJG4IHzWf) (:text |inline)
                              |j $ %{} :Leaf (:at 1536598734716) (:by |root) (:text "|\"sites.md")
                          |r $ %{} :Expr (:at 1523070446408) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070446717) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1523070449110) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070451245) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1523070451492) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070451893) (:by |root) (:text |{})
        |comp-footer $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1523070399629) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1523070400915) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1523070399629) (:by |root) (:text |comp-footer)
              |r $ %{} :Expr (:at 1523070399629) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1523070401647) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1523070402164) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1523070402377) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070402731) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1523070403088) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070404094) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1523070404383) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070405890) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1523070406138) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523071817290) (:by |root) (:text |:background-color)
                                  |j $ %{} :Leaf (:at 1523071818108) (:by |root) (:text "|\"rgb(102,102,102)")
                              |r $ %{} :Expr (:at 1523070414841) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070418220) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1523072858451) (:by |root) (:text "|\"32px 16px")
                  |r $ %{} :Expr (:at 1523070890528) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070892051) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1523070892339) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070892703) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1523070892938) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070894899) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1523070895123) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070895488) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1523070895713) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070900294) (:by |root) (:text |:max-width)
                                      |j $ %{} :Leaf (:at 1523070901260) (:by |root) (:text |600)
                                  |r $ %{} :Expr (:at 1523070975539) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070976530) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1523070979294) (:by |root) (:text |:auto)
                      |r $ %{} :Expr (:at 1523070908396) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070909622) (:by |root) (:text |a)
                          |j $ %{} :Expr (:at 1523070910008) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070910341) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1523070910644) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070912124) (:by |root) (:text |:href)
                                  |j $ %{} :Leaf (:at 1523070920182) (:by |root) (:text "|\"https://github.com/fp-china/fp-china.org")
                              |r $ %{} :Expr (:at 1523070920716) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070922601) (:by |root) (:text |:target)
                                  |j $ %{} :Leaf (:at 1523070926314) (:by |root) (:text "|\"_blank")
                              |v $ %{} :Expr (:at 1523070926823) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070930893) (:by |root) (:text |:inner-text)
                                  |j $ %{} :Leaf (:at 1523070947210) (:by |root) (:text "|\"Site on GitHub")
                              |x $ %{} :Expr (:at 1523070949740) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070952629) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1523070952875) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070953232) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1523070958511) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523070962735) (:by |root) (:text |:text-decoration)
                                          |j $ %{} :Leaf (:at 1523070963569) (:by |root) (:text |:none)
                                      |r $ %{} :Expr (:at 1523070963952) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523070964797) (:by |root) (:text |:color)
                                          |j $ %{} :Expr (:at 1523070965024) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1523070965362) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1523070966534) (:by |root) (:text |240)
                                              |r $ %{} :Leaf (:at 1523070966946) (:by |root) (:text |80)
                                              |v $ %{} :Leaf (:at 1523070969074) (:by |root) (:text |90)
        |comp-header $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1523070325313) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1523070328344) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1523070325313) (:by |root) (:text |comp-header)
              |r $ %{} :Expr (:at 1523070325313) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1523070330710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1523070331114) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1523070331370) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070331716) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1523070333481) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070334907) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1523070335546) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070335942) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1523070336386) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070340051) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1523071871657) (:by |root) (:text "|\"32px 16px")
                              |r $ %{} :Expr (:at 1523070342114) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523070347319) (:by |root) (:text |:background-color)
                                  |j $ %{} :Leaf (:at 1523071809292) (:by |root) (:text "|\"rgb(102,102,102)")
                              |v $ %{} :Expr (:at 1625639072227) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625639072227) (:by |rJG4IHzWf) (:text |:color)
                                  |j $ %{} :Leaf (:at 1625639072227) (:by |rJG4IHzWf) (:text |:white)
                  |r $ %{} :Expr (:at 1523070720409) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1523070721220) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1523070721476) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070721886) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1523070722741) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070725396) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1523070740534) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1523070741516) (:by |root) (:text |merge)
                                  |L $ %{} :Leaf (:at 1625639210240) (:by |rJG4IHzWf) (:text |ui/row-middle)
                                  |T $ %{} :Expr (:at 1523070725638) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523070725988) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1523070726198) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523070727989) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1523070728912) (:by |root) (:text |600)
                                      |r $ %{} :Expr (:at 1523070735709) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523070737009) (:by |root) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1523070738259) (:by |root) (:text |:auto)
                      |r $ %{} :Expr (:at 1523070746127) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523070751737) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1523070759150) (:by |root) (:text "|\"函数式编程中文社区")
                          |r $ %{} :Expr (:at 1523070760930) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523070761273) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1625639068949) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625639068949) (:by |rJG4IHzWf) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1625639068949) (:by |rJG4IHzWf) (:text |24)
                      |t $ %{} :Expr (:at 1625639155583) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625639156606) (:by |rJG4IHzWf) (:text |=<)
                          |j $ %{} :Leaf (:at 1625639158024) (:by |rJG4IHzWf) (:text |16)
                          |r $ %{} :Leaf (:at 1625639159034) (:by |rJG4IHzWf) (:text |nil)
                      |v $ %{} :Expr (:at 1625639021415) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625639037676) (:by |rJG4IHzWf) (:text |a)
                          |j $ %{} :Expr (:at 1625639038835) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1625639039867) (:by |rJG4IHzWf) (:text |{})
                              |L $ %{} :Expr (:at 1625639161714) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625639162488) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1625639163896) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625639164310) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1625639164739) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625639167778) (:by |rJG4IHzWf) (:text |:color)
                                          |j $ %{} :Expr (:at 1625639169251) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1625639169684) (:by |rJG4IHzWf) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1625639172281) (:by |rJG4IHzWf) (:text |200)
                                              |r $ %{} :Leaf (:at 1625639172865) (:by |rJG4IHzWf) (:text |70)
                                              |v $ %{} :Leaf (:at 1625639174043) (:by |rJG4IHzWf) (:text |90)
                              |T $ %{} :Expr (:at 1625639040261) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1625639045568) (:by |rJG4IHzWf) (:text |:inner-text)
                                  |T $ %{} :Leaf (:at 1625639239711) (:by |rJG4IHzWf) (:text "|\"讨论组")
                              |j $ %{} :Expr (:at 1625639046960) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625639048032) (:by |rJG4IHzWf) (:text |:href)
                                  |j $ %{} :Leaf (:at 1625639048664) (:by |rJG4IHzWf) (:text "|\"https://github.com/fp-china/fp-china.org/discussions")
                              |r $ %{} :Expr (:at 1625639052209) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625639053461) (:by |rJG4IHzWf) (:text |:target)
                                  |j $ %{} :Leaf (:at 1625639088471) (:by |rJG4IHzWf) (:text "|\"_blank")
        |inline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1625576842680) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1625576845155) (:by |rJG4IHzWf) (:text |defmacro)
              |j $ %{} :Leaf (:at 1625576842680) (:by |rJG4IHzWf) (:text |inline)
              |n $ %{} :Expr (:at 1625576846559) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625576847156) (:by |rJG4IHzWf) (:text |path)
              |t $ %{} :Expr (:at 1625576852805) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625576860214) (:by |rJG4IHzWf) (:text |read-file)
                  |j $ %{} :Expr (:at 1625576885702) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1625576886440) (:by |rJG4IHzWf) (:text |str)
                      |L $ %{} :Leaf (:at 1625576890224) (:by |rJG4IHzWf) (:text "|\"content/")
                      |T $ %{} :Leaf (:at 1625576858789) (:by |rJG4IHzWf) (:text |path)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1625576908820) (:by |root) (:text |respo.util.format)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516527080962) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1523070956059) (:by |root) (:text |a)
                |x $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yT $ %{} :Expr (:at 1519699088529) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519699092590) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1519699093410) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519699093683) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1519699096732) (:by |root) (:text |comp-md)
                        |r $ %{} :Leaf (:at 1523070469386) (:by |root) (:text |comp-md-block)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1531240365084) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544952196895) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544952196895) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544952196895) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1625576489892) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1625576490253) (:by |rJG4IHzWf) (:text |=)
                  |L $ %{} :Leaf (:at 1625576500263) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1625576483286) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1625576486304) (:by |rJG4IHzWf) (:text |get-env)
                      |j $ %{} :Leaf (:at 1625576487961) (:by |rJG4IHzWf) (:text "|\"mode")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |site)
              |r $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |{})
                  |j $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:storage)
                      |j $ %{} :Leaf (:at 1544952215389) (:by |rJG4IHzWf) (:text "|\"fp-china")
                  |r $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |x $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1544952221387) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/fp-china-org/")
                  |yT $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:title)
                      |j $ %{} :Leaf (:at 1544952241898) (:by |rJG4IHzWf) (:text "|\"中文函数式编程导航")
                  |yj $ %{} :Expr (:at 1544952210691) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text |:icon)
                      |j $ %{} :Leaf (:at 1544952210691) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/mvc-works.png")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1531240253479) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1531240253479) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1531240253479) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |main!)
              |r $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                :data $ {}
              |v $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text "|\"release")
              |x $ %{} :Expr (:at 1625576604549) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625576612014) (:by |rJG4IHzWf) (:text |write-html!)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |reload!)
              |r $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                :data $ {}
              |u $ %{} :Expr (:at 1625576621348) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625576623265) (:by |rJG4IHzWf) (:text |write-html!)
              |y $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text "||Code updated.")
        |write-html! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1625576614552) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1625576614552) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1625576614552) (:by |rJG4IHzWf) (:text |write-html!)
              |r $ %{} :Expr (:at 1625576614552) (:by |rJG4IHzWf)
                :data $ {}
              |x $ %{} :Expr (:at 1625578903496) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1625579007113) (:by |rJG4IHzWf) (:text |fs/writeFileSync)
                  |L $ %{} :Leaf (:at 1625578910688) (:by |rJG4IHzWf) (:text "|\"index.html")
                  |T $ %{} :Expr (:at 1625576628405) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1625576661471) (:by |rJG4IHzWf) (:text |make-string)
                      |j $ %{} :Expr (:at 1625576678921) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1625576679735) (:by |rJG4IHzWf) (:text |html)
                          |j $ %{} :Expr (:at 1625576712103) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625576712531) (:by |rJG4IHzWf) (:text |{})
                          |r $ %{} :Expr (:at 1625576713014) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625576715291) (:by |rJG4IHzWf) (:text |head)
                              |j $ %{} :Expr (:at 1625576715769) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625576716096) (:by |rJG4IHzWf) (:text |{})
                              |n $ %{} :Expr (:at 1625579386425) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579446569) (:by |rJG4IHzWf) (:text |create-element)
                                  |b $ %{} :Leaf (:at 1625579448209) (:by |rJG4IHzWf) (:text |:meta)
                                  |j $ %{} :Expr (:at 1625579394444) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579395024) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1625579395352) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625579397145) (:by |rJG4IHzWf) (:text |:charset)
                                          |j $ %{} :Leaf (:at 1625579401675) (:by |rJG4IHzWf) (:text "|\"utf8")
                              |r $ %{} :Expr (:at 1625579148643) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579149467) (:by |rJG4IHzWf) (:text |title)
                                  |j $ %{} :Expr (:at 1625579154424) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579154688) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1625579154989) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625579156498) (:by |rJG4IHzWf) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1625579163912) (:by |rJG4IHzWf) (:text "|\"函数式编程中文社区")
                              |v $ %{} :Expr (:at 1625579165137) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625579166490) (:by |rJG4IHzWf) (:text |link)
                                  |j $ %{} :Expr (:at 1625579167096) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1625579167391) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1625579168743) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625579170809) (:by |rJG4IHzWf) (:text |:rel)
                                          |j $ %{} :Leaf (:at 1625579190067) (:by |rJG4IHzWf) (:text "|\"stylesheet")
                                      |r $ %{} :Expr (:at 1625579190623) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1625579191673) (:by |rJG4IHzWf) (:text |:href)
                                          |j $ %{} :Leaf (:at 1625579197505) (:by |rJG4IHzWf) (:text "|\"./entry/main.css")
                          |v $ %{} :Expr (:at 1625576716793) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1625576718391) (:by |rJG4IHzWf) (:text |body)
                              |j $ %{} :Expr (:at 1625576719230) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625576719613) (:by |rJG4IHzWf) (:text |{})
                              |r $ %{} :Expr (:at 1625576720425) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1625576725466) (:by |rJG4IHzWf) (:text |comp-container)
              |y $ %{} :Expr (:at 1625581100585) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1625581100585) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1625581107851) (:by |rJG4IHzWf) (:text "|\"Wrote to index.html")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |app.main)
            |r $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |render!)
                        |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |realize-ssr!)
                        |x $ %{} :Leaf (:at 1625576699447) (:by |rJG4IHzWf) (:text |html)
                        |y $ %{} :Leaf (:at 1625576704230) (:by |rJG4IHzWf) (:text |head)
                        |yT $ %{} :Leaf (:at 1625576704956) (:by |rJG4IHzWf) (:text |body)
                        |yj $ %{} :Leaf (:at 1625576709004) (:by |rJG4IHzWf) (:text |link)
                        |yr $ %{} :Leaf (:at 1625579151823) (:by |rJG4IHzWf) (:text |title)
                        |yv $ %{} :Leaf (:at 1625579443702) (:by |rJG4IHzWf) (:text |create-element)
                |n $ %{} :Expr (:at 1625576664201) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1625576672191) (:by |rJG4IHzWf) (:text |respo.render.html)
                    |j $ %{} :Leaf (:at 1625576673013) (:by |rJG4IHzWf) (:text |:refer)
                    |r $ %{} :Expr (:at 1625576675505) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1625576677412) (:by |rJG4IHzWf) (:text |make-string)
                |r $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |comp-container)
                |x $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |schema)
                |yv $ %{} :Expr (:at 1544952286682) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |app.config)
                    |r $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1544952286682) (:by |rJG4IHzWf) (:text |config)
                |yx $ %{} :Expr (:at 1625579000700) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1625579001319) (:by |rJG4IHzWf) (:text "|\"fs")
                    |j $ %{} :Leaf (:at 1625579001912) (:by |rJG4IHzWf) (:text |:as)
                    |r $ %{} :Leaf (:at 1625579002213) (:by |rJG4IHzWf) (:text |fs)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
