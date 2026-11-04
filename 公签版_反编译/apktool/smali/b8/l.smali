.class public final Lb8/l;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;I)V
    .locals 0

    .line 1
    iput p2, p0, Lb8/l;->a:I

    iput-object p1, p0, Lb8/l;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget v0, p0, Lb8/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/util/AbstractCollection;->clear()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 11
    .line 12
    check-cast v0, Lb8/n;

    .line 13
    .line 14
    invoke-virtual {v0}, Lb8/n;->clear()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 19
    .line 20
    check-cast v0, Lb8/n;

    .line 21
    .line 22
    invoke-virtual {v0}, Lb8/n;->clear()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget v0, p0, Lb8/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Lb8/n;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lb8/n;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :pswitch_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    check-cast p1, Ljava/util/Map$Entry;

    .line 26
    .line 27
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 28
    .line 29
    check-cast v0, Lb8/n;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    :try_start_0
    invoke-virtual {v0, v2, v1}, Lb8/n;->a(Ljava/lang/Object;Z)Lb8/m;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    nop

    .line 47
    :cond_0
    move-object v0, v3

    .line 48
    :goto_0
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v2, v0, Lb8/m;->h:Ljava/lang/Object;

    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    move-object v3, v0

    .line 63
    :cond_1
    if-eqz v3, :cond_2

    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    :cond_2
    return v1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Lb8/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, La0/c;

    .line 7
    .line 8
    iget-object v1, p0, Lb8/l;->b:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v1, La0/e;

    .line 11
    .line 12
    invoke-direct {v0, v1}, La0/c;-><init>(La0/e;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :pswitch_0
    new-instance v0, Lb8/k;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {v0, p0, v1}, Lb8/k;-><init>(Lb8/l;B)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :pswitch_1
    new-instance v0, Lb8/k;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lb8/k;-><init>(Lb8/l;)V

    .line 26
    .line 27
    .line 28
    return-object v0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget v0, p0, Lb8/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1

    .line 11
    :pswitch_0
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 12
    .line 13
    check-cast v0, Lb8/n;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lb8/n;->a(Ljava/lang/Object;Z)Lb8/m;

    .line 23
    .line 24
    .line 25
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    nop

    .line 28
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v2, p1}, Lb8/n;->c(Lb8/m;Z)V

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz v2, :cond_2

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    :cond_2
    return v1

    .line 38
    :pswitch_1
    instance-of v0, p1, Ljava/util/Map$Entry;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_3
    check-cast p1, Ljava/util/Map$Entry;

    .line 45
    .line 46
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 47
    .line 48
    check-cast v0, Lb8/n;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lb8/n;->a(Ljava/lang/Object;Z)Lb8/m;

    .line 61
    .line 62
    .line 63
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    goto :goto_1

    .line 65
    :catch_1
    nop

    .line 66
    :cond_4
    move-object v2, v3

    .line 67
    :goto_1
    if-eqz v2, :cond_5

    .line 68
    .line 69
    iget-object v4, v2, Lb8/m;->h:Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v4, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    .line 81
    move-object v3, v2

    .line 82
    :cond_5
    if-nez v3, :cond_6

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_6
    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v3, v1}, Lb8/n;->c(Lb8/m;Z)V

    .line 87
    .line 88
    .line 89
    :goto_2
    return v1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lb8/l;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 7
    .line 8
    check-cast v0, La0/e;

    .line 9
    .line 10
    iget v0, v0, La0/t;->c:I

    .line 11
    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 14
    .line 15
    check-cast v0, Lb8/n;

    .line 16
    .line 17
    iget v0, v0, Lb8/n;->d:I

    .line 18
    .line 19
    return v0

    .line 20
    :pswitch_1
    iget-object v0, p0, Lb8/l;->b:Ljava/util/Map;

    .line 21
    .line 22
    check-cast v0, Lb8/n;

    .line 23
    .line 24
    iget v0, v0, Lb8/n;->d:I

    .line 25
    .line 26
    return v0

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
