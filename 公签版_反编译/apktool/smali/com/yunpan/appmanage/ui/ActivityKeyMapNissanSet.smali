.class public Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;
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
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->C:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->D:Landroid/widget/EditText;

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
    const/16 v0, 0x12c

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->C:I

    .line 21
    .line 22
    if-eq v1, v0, :cond_1

    .line 23
    .line 24
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 25
    .line 26
    invoke-static {v1}, Lq4/a;->t(Landroid/content/Context;)Lz7/s;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "intervalTime"

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v2, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lda/g;->A:Lda/g;

    .line 40
    .line 41
    invoke-static {v2, v1}, Lq4/a;->W(Landroid/content/Context;Lz7/s;)V

    .line 42
    .line 43
    .line 44
    sget-object v1, Lwa/t;->a:Lwa/u;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    .line 48
    .line 49
    :try_start_1
    iput v0, v1, Lwa/u;->q:I

    .line 50
    .line 51
    iget-object v2, v1, Lwa/u;->b:Lz7/s;

    .line 52
    .line 53
    const-string v3, "KeyMapAccInterval"

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v2, v3, v0}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    :catch_0
    :try_start_2
    invoke-virtual {v1}, Lwa/u;->i()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lda/g;->A:Lda/g;

    .line 66
    .line 67
    const-string v1, "UP_KEYMAP_NISSAN"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lta/m;->c(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_0
    invoke-super {p0}, Lda/g;->onDestroy()V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    const v0, 0x7f0e0042

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
    const/16 v2, 0xd

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
    const v1, 0x7f0b0470

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lq/i;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/EditText;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->D:Landroid/widget/EditText;

    .line 30
    .line 31
    iget-object v1, p0, Lda/g;->A:Lda/g;

    .line 32
    .line 33
    invoke-static {v1}, Lq4/a;->t(Landroid/content/Context;)Lz7/s;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    const-string v2, "intervalTime"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Lz7/s;->o(Ljava/lang/String;)Lz7/p;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lz7/p;->e()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    iput v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->C:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    :catch_0
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->D:Landroid/widget/EditText;

    .line 50
    .line 51
    iget v2, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->C:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/yunpan/appmanage/ui/ActivityKeyMapNissanSet;->D:Landroid/widget/EditText;

    .line 61
    .line 62
    new-instance v2, Lua/h3;

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    invoke-direct {v2, v0, v3}, Lua/h3;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lha/c0;

    .line 72
    .line 73
    const/16 v2, 0xc

    .line 74
    .line 75
    invoke-direct {v1, p0, v2}, Lha/c0;-><init>(Landroid/view/KeyEvent$Callback;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
