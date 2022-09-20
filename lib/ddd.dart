List<Source> Sources1;

Sourcestabs(this.Sources1);

@override
State<Sourcestabs> createState() => _SourcestabsState();
}

class _SourcestabsState extends State<Sourcestabs> {
  int selectedTab = 0 ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(length: widget.Sources1.length,
        child: Column(children: [TabBar( onTap: (index)
        {selectedTab = index ;
        setState((){}); },
            isScrollable:true,indicatorColor:Colors.transparent,tabs:widget.Sources1.map((source)
            {  var isselected = widget.Sources1.indexOf(source) == selectedTab ;
            return SourceTab(source,isselected);}).toList()
        ),
          Newslist(widget.Sources1[selectedTab]) ,
        ]
        )
        ,),
    );
  }
}
