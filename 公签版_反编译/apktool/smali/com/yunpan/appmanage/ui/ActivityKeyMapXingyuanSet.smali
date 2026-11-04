.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic H:I


# instance fields
.field public C:I

.field public D:I

.field public E:Landroid/widget/EditText;

.field public F:Landroid/widget/EditText;

.field public G:Lz7/s;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f4

    .line 5
    .line 6
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->C:I

    .line 7
    .line 8
    const/16 v0, 0x12c

    .line 9
    .line 10
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->D:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0043

    return v0
.end method

.method public final u()V
    .locals 3

    .line 1
    const v0, 0x7f0b03ad

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    new-instance v1, Lua/g1;

    .line 11
    .line 12
    const/16 v2, 0xe

    .line 13
    .line 14
    invoke-direct {v1, p0, v2}, Lua/g1;-><init>(Lda/g;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lq4/a;->r(Landroid/content/Context;)Lz7/s;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 25
    .line 26
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 27
    .line 28
    const-string v1, "triggerTime_double"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->C:I

    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 49
    .line 50
    iget-object v0, v0, Lz7/s;->a:Lb8/n;

    .line 51
    .line 52
    const-string v1, "triggerTime_long"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->G:Lz7/s;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lz7/p;->e()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->D:I

    .line 71
    .line 72
    :cond_1
    const v0, 0x7f0b046f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/EditText;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->E:Landroid/widget/EditText;

    .line 82
    .line 83
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->C:I

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    const v0, 0x7f0b0471

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/EditText;

    .line 100
    .line 101
    iput-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->F:Landroid/widget/EditText;

    .line 102
    .line 103
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapXingyuanSet;->D:I

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
