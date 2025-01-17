// Package for showing Chinese fake bold, see: https://typst.app/universe/package/cuti/
#import "@preview/cuti:0.3.0": show-cn-fakebold

#import "../utils/variables.typ": *
#import "../utils/components.typ": page_title

#let integrity(anoymous: false) = {
  show: show-cn-fakebold

  set page(
    header: {
      set text(font: 字体.中宋, size: 字号.四号)
      [#h(1em)北京交通大学毕业论文（设计）]
      h(1fr)
      [论文诚信声明#h(1em)]
      place(dy: 5pt)[#line(stroke: 2pt, length: 100%)]
      place(dy: 8pt)[#line(stroke: 1pt, length: 100%)]
    }
  )

  page_title("学士论文诚信声明")
  
  text[
    #set par(justify: false, leading: 1.24em, first-line-indent: 2em)
    #h(2em)本人声明所呈交的毕业论文（设计），题目
    #box(width: 14em)[#line(length: 100%)]
    是本人在指导教师的指导下，独立进行研究工作所取得的成果。尽我所知，除了文中特别加以标注和致谢中所罗列的内容以外，论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得北京交通大学或其他教育机构的学位或证书而使用过的材料。
    
    申请学位论文与资料若有不实之处，本人承担一切相关责任。
  ]
  
  linebreak()

  columns(2)[
    #text[
      #h(2em)本人签名：
      #box(width: 1fr)[#line(length: 100%)]
    ]
    #colbreak()
    #text[
      日期：
      #box(width: 1fr)[#line(length: 100%)]
    ]
  ]

  pagebreak()
}

