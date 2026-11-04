.class public final synthetic Lha/w2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/d;
.implements Lea/f;


# instance fields
.field public final synthetic a:Lha/j3;


# direct methods
.method public synthetic constructor <init>(Lha/j3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/w2;->a:Lha/j3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx9/w3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lha/w2;->a:Lha/j3;

    .line 2
    .line 3
    iput-object p1, v0, Lha/j3;->h:Lx9/w3;

    .line 4
    .line 5
    iget-object v1, v0, Lha/j3;->i:Landroid/widget/TextView;

    .line 6
    .line 7
    iget-object p1, p1, Lx9/w3;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1c

    .line 15
    .line 16
    if-ge p1, v1, :cond_1

    .line 17
    .line 18
    iget-object p1, v0, Lha/j3;->F:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/4 v1, 0x2

    .line 25
    if-le p1, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, v0, Lha/j3;->h:Lx9/w3;

    .line 28
    .line 29
    iget-object p1, p1, Lx9/w3;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v1, ".pcm"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    iget-object p1, v0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, v0, Lha/j3;->G:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    const/16 v0, 0x8

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public g(Lmc/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lha/w2;->a:Lha/j3;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, v0, Lha/a4;->b:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, v0, Lha/j3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lha/g1;->c(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "\u62a5\u9519\uff1a"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->u(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p1}, Lmc/b;->b()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
