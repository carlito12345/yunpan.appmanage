.class public Lu7/d;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient a:Lu7/b;

.field public transient b:Lu7/n;

.field public final transient c:Ljava/util/Map;

.field public final synthetic d:Lu7/u0;


# direct methods
.method public constructor <init>(Lu7/u0;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu7/d;->d:Lu7/u0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lu7/d;->c:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map$Entry;)Lu7/c0;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/Collection;

    .line 10
    .line 11
    iget-object v1, p0, Lu7/d;->d:Lu7/u0;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    instance-of v2, p1, Ljava/util/RandomAccess;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    new-instance v2, Lu7/h;

    .line 21
    .line 22
    invoke-direct {v2, v1, v0, p1, v3}, Lu7/h;-><init>(Lu7/u0;Ljava/lang/Object;Ljava/util/List;Lu7/l;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v2, Lu7/l;

    .line 27
    .line 28
    invoke-direct {v2, v1, v0, p1, v3}, Lu7/l;-><init>(Lu7/u0;Ljava/lang/Object;Ljava/util/List;Lu7/l;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    new-instance p1, Lu7/c0;

    .line 32
    .line 33
    invoke-direct {p1, v0, v2}, Lu7/c0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-object p1
.end method

.method public final clear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lu7/d;->d:Lu7/u0;

    .line 2
    .line 3
    iget-object v1, v0, Lu7/u0;->d:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lu7/d;->c:Ljava/util/Map;

    .line 6
    .line 7
    if-ne v2, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lu7/u0;->d()V

    .line 10
    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v0, Lu7/c;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lu7/c;-><init>(Lu7/d;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Lu7/c;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lu7/c;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lu7/c;->remove()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->a:Lu7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu7/b;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lu7/b;-><init>(Lu7/d;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu7/d;->a:Lu7/b;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 15
    :goto_1
    return p1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    nop

    .line 13
    move-object v0, v1

    .line 14
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v2, p0, Lu7/d;->d:Lu7/u0;

    .line 20
    .line 21
    check-cast v0, Ljava/util/List;

    .line 22
    .line 23
    instance-of v3, v0, Ljava/util/RandomAccess;

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    new-instance v3, Lu7/h;

    .line 28
    .line 29
    invoke-direct {v3, v2, p1, v0, v1}, Lu7/h;-><init>(Lu7/u0;Ljava/lang/Object;Ljava/util/List;Lu7/l;)V

    .line 30
    .line 31
    .line 32
    :goto_1
    move-object v1, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    new-instance v3, Lu7/l;

    .line 35
    .line 36
    invoke-direct {v3, v2, p1, v0, v1}, Lu7/l;-><init>(Lu7/u0;Ljava/lang/Object;Ljava/util/List;Lu7/l;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :goto_2
    return-object v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lu7/d;->d:Lu7/u0;

    .line 2
    .line 3
    iget-object v1, v0, Lu7/o;->a:Ljava/util/Set;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lu7/o;->c()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iput-object v1, v0, Lu7/o;->a:Ljava/util/Set;

    .line 12
    .line 13
    :cond_0
    return-object v1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/Collection;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lu7/d;->d:Lu7/u0;

    .line 14
    .line 15
    iget-object v1, v0, Lu7/u0;->f:Lu7/t0;

    .line 16
    .line 17
    invoke-virtual {v1}, Lu7/t0;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget v3, v0, Lu7/u0;->e:I

    .line 31
    .line 32
    sub-int/2addr v3, v2

    .line 33
    iput v3, v0, Lu7/u0;->e:I

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 36
    .line 37
    .line 38
    move-object p1, v1

    .line 39
    :goto_0
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lu7/d;->b:Lu7/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lu7/n;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lu7/n;-><init>(Ljava/util/AbstractMap;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lu7/d;->b:Lu7/n;

    .line 11
    .line 12
    :cond_0
    return-object v0
.end method
