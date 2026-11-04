.class public final Lua/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivitySidebarSet;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/s6;->a:I

    iput-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final e(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final f(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final g(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final h(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final i(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final j(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final k(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final l(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final m(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final n(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final o(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final p(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final q(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final r(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget p1, p0, Lua/s6;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 7
    .line 8
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    .line 16
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 17
    .line 18
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 25
    .line 26
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 33
    .line 34
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 35
    .line 36
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 43
    .line 44
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->F:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :pswitch_2
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 59
    .line 60
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 67
    .line 68
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 69
    .line 70
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_3
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 77
    .line 78
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 79
    .line 80
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    .line 82
    .line 83
    move-result-object p3

    .line 84
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 85
    .line 86
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    .line 88
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :pswitch_4
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 95
    .line 96
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 97
    .line 98
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    .line 104
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->E:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :pswitch_5
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 111
    .line 112
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 119
    .line 120
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 121
    .line 122
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :pswitch_6
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 129
    .line 130
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 131
    .line 132
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 137
    .line 138
    iput p2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 139
    .line 140
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_7
    iget-object p1, p0, Lua/s6;->b:Lcom/yunpan/appmanage/ui/ActivitySidebarSet;

    .line 147
    .line 148
    iget-object p3, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    iput p2, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    .line 156
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivitySidebarSet;->D:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/s6;->a:I

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    iget p1, p0, Lua/s6;->a:I

    return-void
.end method
