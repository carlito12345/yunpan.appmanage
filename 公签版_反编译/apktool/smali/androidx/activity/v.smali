.class public final synthetic Landroidx/activity/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/a;
.implements Lue/c;
.implements Lze/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Lze/a;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final synthetic g:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Landroidx/activity/v;->b:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, Landroidx/activity/v;->c:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Landroidx/activity/v;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Landroidx/activity/v;->e:Ljava/lang/String;

    .line 8
    iput-boolean p1, p0, Landroidx/activity/v;->f:Z

    return-void
.end method

.method public constructor <init>(Landroidx/activity/w;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/activity/v;->g:I

    .line 1
    const-string v5, "updateEnabledCallbacks"

    const-string v6, "updateEnabledCallbacks()V"

    const/4 v2, 0x0

    const-class v4, Landroidx/activity/w;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/activity/v;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Landroidx/activity/v;->g:I

    .line 2
    const-string v5, "updateEnabledCallbacks"

    const-string v6, "updateEnabledCallbacks()V"

    const/4 v2, 0x0

    const-class v4, Landroidx/activity/w;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Landroidx/activity/v;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lze/a;
    .locals 1

    .line 1
    sget-object v0, Lue/g;->a:Lue/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/activity/v;->g:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/activity/v;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/activity/w;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/activity/w;->d()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lie/e;->c:Lie/e;

    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    iget-object v0, p0, Landroidx/activity/v;->b:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroidx/activity/w;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/activity/w;->d()V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lie/e;->c:Lie/e;

    .line 24
    .line 25
    return-object v0

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lue/a;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/activity/v;->c:Ljava/lang/Class;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/activity/v;->f:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Lue/g;->a:Lue/h;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v1, Lue/f;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lue/f;-><init>(Ljava/lang/Class;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lue/g;->a:Lue/h;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    new-instance v1, Lue/b;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lue/b;-><init>(Ljava/lang/Class;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/activity/v;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Landroidx/activity/v;

    .line 11
    .line 12
    iget-object v1, p1, Landroidx/activity/v;->d:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v3, p0, Landroidx/activity/v;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Landroidx/activity/v;->e:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p1, Landroidx/activity/v;->e:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/activity/v;->b:Ljava/lang/Object;

    .line 33
    .line 34
    iget-object v3, p1, Landroidx/activity/v;->b:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {v1, v3}, Lue/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/activity/v;->c()Lue/a;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {p1}, Landroidx/activity/v;->c()Lue/a;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 59
    :cond_2
    instance-of v0, p1, Landroidx/activity/v;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/activity/v;->a:Lze/a;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/activity/v;->a()Lze/a;

    .line 68
    .line 69
    .line 70
    iput-object p0, p0, Landroidx/activity/v;->a:Lze/a;

    .line 71
    .line 72
    move-object v0, p0

    .line 73
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/activity/v;->c()Lue/a;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/activity/v;->c()Lue/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/16 v1, 0x1f

    .line 13
    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/activity/v;->d:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/digest/a;->c(IILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Landroidx/activity/v;->e:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/v;->a:Lze/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/activity/v;->a()Lze/a;

    .line 6
    .line 7
    .line 8
    iput-object p0, p0, Landroidx/activity/v;->a:Lze/a;

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    :cond_0
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/activity/v;->d:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "<init>"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    const-string v0, "constructor (Kotlin reflection is not available)"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const-string v1, "function "

    .line 32
    .line 33
    const-string v2, " (Kotlin reflection is not available)"

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lg/b;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    return-object v0
.end method
