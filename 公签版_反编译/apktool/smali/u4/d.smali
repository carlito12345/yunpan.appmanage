.class public final Lu4/d;
.super Lu4/f0;
.source "SourceFile"


# instance fields
.field public final f:Ljava/util/TreeMap;

.field public g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lu4/f;)V
    .locals 2

    .line 1
    const-string v0, "class_defs"

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {p0, v0, p1, v1}, Lu4/f0;-><init>(Ljava/lang/String;Lu4/f;I)V

    .line 5
    .line 6
    .line 7
    new-instance p1, Ljava/util/TreeMap;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lu4/d;->f:Ljava/util/TreeMap;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lu4/d;->g:Ljava/util/ArrayList;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final c()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lu4/d;->g:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lu4/d;->f:Ljava/util/TreeMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final k()V
    .locals 5

    .line 1
    iget-object v0, p0, Lu4/d;->f:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    .line 11
    .line 12
    iput-object v2, p0, Lu4/d;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ly4/c;

    .line 34
    .line 35
    sub-int v4, v1, v2

    .line 36
    .line 37
    invoke-virtual {p0, v3, v2, v4}, Lu4/d;->l(Ly4/c;II)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method

.method public final l(Ly4/c;II)I
    .locals 4

    .line 1
    iget-object v0, p0, Lu4/d;->f:Ljava/util/TreeMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu4/c;

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget v1, v0, Lu4/o;->a:I

    .line 12
    .line 13
    if-ltz v1, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    if-ltz p3, :cond_4

    .line 17
    .line 18
    add-int/lit8 p3, p3, -0x1

    .line 19
    .line 20
    iget-object p1, v0, Lu4/c;->d:Lx4/u;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p1, Lx4/u;->a:Ly4/c;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lu4/d;->l(Ly4/c;II)I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    :cond_1
    iget-object p1, v0, Lu4/c;->e:Lu4/e0;

    .line 31
    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    sget-object p1, Ly4/b;->c:Ly4/b;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p1, Lu4/e0;->e:Ly4/e;

    .line 38
    .line 39
    :goto_0
    move-object v1, p1

    .line 40
    check-cast v1, Lb5/c;

    .line 41
    .line 42
    iget-object v1, v1, Lb5/c;->b:[Ljava/lang/Object;

    .line 43
    .line 44
    array-length v1, v1

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_1
    if-ge v2, v1, :cond_3

    .line 47
    .line 48
    invoke-interface {p1, v2}, Ly4/e;->b(I)Ly4/c;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {p0, v3, p2, p3}, Lu4/d;->l(Ly4/c;II)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v0, p2}, Lu4/o;->g(I)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lu4/d;->g:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    return p2

    .line 70
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    .line 71
    .line 72
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "class circularity with "

    .line 75
    .line 76
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p2

    .line 90
    :cond_5
    :goto_2
    return p2
.end method
