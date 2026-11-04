.class public Lcom/yunpan/appmanage/ui/ActivityOuShang;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

.field public D:Lx9/k3;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0045

    return v0
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05ba

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .line 14
    .line 15
    const-string v1, "Z6\u3001X7\u3001X5\u7b49\u6b27\u5c1a\u8f66\u673a\u4e13\u7528"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lha/u9;

    .line 21
    .line 22
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1}, Lha/u9;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    const v0, 0x7f0b03ad

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 35
    .line 36
    new-instance v1, Lua/g1;

    .line 37
    .line 38
    const/16 v2, 0x18

    .line 39
    .line 40
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0b04f1

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 56
    .line 57
    new-instance v1, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    invoke-direct {v1, p0, v2}, Lcom/owen/tvrecyclerview/widget/V7GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, Lx9/k3;

    .line 67
    .line 68
    invoke-direct {v0}, Lx9/k3;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 72
    .line 73
    const v1, 0x7f0802c7

    .line 74
    .line 75
    .line 76
    const-string v2, "\u5e94\u7528\u5168\u5c4f\u7ba1\u7406"

    .line 77
    .line 78
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 82
    .line 83
    const-string v2, "\u5e94\u7528\u5168\u5c4f\u7ba1\u7406(\u65e0\u9700\u63d0\u6743)"

    .line 84
    .line 85
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 89
    .line 90
    const v1, 0x7f080258

    .line 91
    .line 92
    .line 93
    const-string v2, "\u5e94\u7528\u767d\u540d\u5355\u7ba1\u7406"

    .line 94
    .line 95
    invoke-static {v1, v2, v0}, Lg/b;->p(ILjava/lang/String;Lx9/k3;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 99
    .line 100
    new-instance v1, Lx9/l3;

    .line 101
    .line 102
    sget-object v2, Lcom/yunpan/appmanage/util/v;->a:Lcom/yunpan/appmanage/util/w;

    .line 103
    .line 104
    iget-boolean v2, v2, Lcom/yunpan/appmanage/util/w;->E:Z

    .line 105
    .line 106
    if-eqz v2, :cond_0

    .line 107
    .line 108
    const v2, 0x7f080234

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    const v2, 0x7f080237

    .line 113
    .line 114
    .line 115
    :goto_0
    const-string v3, "\u5b89\u88c5\u5e94\u7528\u65f6\u81ea\u52a8\u6dfb\u52a0\u767d\u540d\u5355"

    .line 116
    .line 117
    invoke-direct {v1, v2, v3}, Lx9/l3;-><init>(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->C:Lcom/owen/tvrecyclerview/widget/TvRecyclerView;

    .line 124
    .line 125
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 126
    .line 127
    invoke-virtual {v0, v1}, Lcom/owen/tvrecyclerview/widget/TvRecyclerView;->setAdapter(Landroidx/recyclerview/widget/m1;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityOuShang;->D:Lx9/k3;

    .line 131
    .line 132
    new-instance v1, Lph/j;

    .line 133
    .line 134
    const/16 v2, 0x1c

    .line 135
    .line 136
    invoke-direct {v1, v2, p0}, Lph/j;-><init>(ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iput-object v1, v0, Lc6/g;->e:Lc6/e;

    .line 140
    .line 141
    return-void
.end method
