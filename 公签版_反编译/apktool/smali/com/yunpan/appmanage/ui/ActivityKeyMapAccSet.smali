.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;
.super Lda/g;
.source "SourceFile"


# static fields
.field public static final synthetic E:I


# instance fields
.field public C:I

.field public D:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lda/g;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->C:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->D:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ge v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x258

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->C:I

    .line 21
    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    iput v0, v1, Lwa/u;->q:I

    .line 30
    .line 31
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    .line 32
    .line 33
    const-string v3, "KeyMapAccInterval"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 46
    .line 47
    invoke-static {v0}, Lta/m;->e(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e003d

    return v0
.end method

.method public final u()V
    .locals 4

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
    const/16 v2, 0xa

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
    const v1, 0x7f0b05d8

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/TextView;

    .line 28
    .line 29
    const v2, 0x7f130022

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 33
    .line 34
    .line 35
    const v1, 0x7f0b0470

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/EditText;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->D:Landroid/widget/EditText;

    .line 45
    .line 46
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 47
    .line 48
    iget v2, v2, Lwa/u;->q:I

    .line 49
    .line 50
    iput v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->C:I

    .line 51
    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapAccSet;->D:Landroid/widget/EditText;

    .line 60
    .line 61
    new-instance v2, Lua/h3;

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, v0, v3}, Lua/h3;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Lha/c0;

    .line 71
    .line 72
    const/16 v2, 0xa

    .line 73
    .line 74
    invoke-direct {v1, p0, v2}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
