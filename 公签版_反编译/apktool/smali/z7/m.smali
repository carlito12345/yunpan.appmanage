.class public final Lz7/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final h:Lz7/i;

.field public static final i:Lz7/h;

.field public static final j:Lz7/y;

.field public static final k:Lz7/y;


# instance fields
.field public final a:Ljava/lang/ThreadLocal;

.field public final b:Lj$/util/concurrent/ConcurrentHashMap;

.field public final c:Lcom/bumptech/glide/manager/s;

.field public final d:Lc8/l;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Lz7/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lz7/i;->d:Lz7/i;

    .line 2
    .line 3
    sput-object v0, Lz7/m;->h:Lz7/i;

    .line 4
    .line 5
    sget-object v0, Lz7/h;->a:Lz7/a;

    .line 6
    .line 7
    sput-object v0, Lz7/m;->i:Lz7/h;

    .line 8
    .line 9
    sget-object v0, Lz7/y;->a:Lz7/u;

    .line 10
    .line 11
    sput-object v0, Lz7/m;->j:Lz7/y;

    .line 12
    .line 13
    sget-object v0, Lz7/y;->b:Lz7/v;

    .line 14
    .line 15
    sput-object v0, Lz7/m;->k:Lz7/y;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 12

    .line 1
    sget-object v1, Lb8/d;->c:Lb8/d;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 7
    sget-object v5, Lz7/m;->h:Lz7/i;

    const/4 v6, 0x1

    sget-object v2, Lz7/m;->i:Lz7/h;

    const/4 v4, 0x1

    const/4 v7, 0x1

    sget-object v9, Lz7/m;->j:Lz7/y;

    sget-object v10, Lz7/m;->k:Lz7/y;

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lz7/m;-><init>(Lb8/d;Lz7/h;Ljava/util/Map;ZLz7/i;ZILjava/util/List;Lz7/y;Lz7/y;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lb8/d;Lz7/h;Ljava/util/Map;ZLz7/i;ZILjava/util/List;Lz7/y;Lz7/y;Ljava/util/List;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lz7/m;->a:Ljava/lang/ThreadLocal;

    .line 10
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lz7/m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 11
    new-instance v0, Lcom/bumptech/glide/manager/s;

    invoke-direct {v0, p3, p6, p11}, Lcom/bumptech/glide/manager/s;-><init>(Ljava/util/Map;ZLjava/util/List;)V

    iput-object v0, p0, Lz7/m;->c:Lcom/bumptech/glide/manager/s;

    .line 12
    iput-boolean p4, p0, Lz7/m;->f:Z

    .line 13
    iput-object p5, p0, Lz7/m;->g:Lz7/i;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    sget-object p3, Lc8/f1;->A:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p3, Lz7/y;->a:Lz7/u;

    if-ne p9, p3, :cond_0

    .line 17
    sget-object p3, Lc8/s;->c:Lc8/q;

    goto :goto_0

    .line 18
    :cond_0
    new-instance p3, Lc8/q;

    const/4 p4, 0x1

    invoke-direct {p3, p4, p9}, Lc8/q;-><init>(ILjava/lang/Object;)V

    .line 19
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 22
    sget-object p3, Lc8/f1;->p:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object p3, Lc8/f1;->g:Lc8/x0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object p3, Lc8/f1;->d:Lc8/x0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object p3, Lc8/f1;->e:Lc8/x0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object p3, Lc8/f1;->f:Lc8/x0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x1

    if-ne p7, p3, :cond_1

    .line 27
    sget-object p3, Lc8/f1;->k:Lc8/d0;

    goto :goto_1

    .line 28
    :cond_1
    new-instance p3, Lz7/j;

    invoke-direct {p3}, Lz7/j;-><init>()V

    .line 29
    :goto_1
    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    new-instance p5, Lc8/x0;

    const-class p6, Ljava/lang/Long;

    invoke-direct {p5, p4, p6, p3}, Lc8/x0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lz7/a0;)V

    .line 31
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 33
    new-instance p5, Lc8/t;

    const/4 p6, 0x1

    invoke-direct {p5, p6}, Lc8/t;-><init>(I)V

    .line 34
    new-instance p6, Lc8/x0;

    const-class p7, Ljava/lang/Double;

    invoke-direct {p6, p4, p7, p5}, Lc8/x0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lz7/a0;)V

    .line 35
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    new-instance p5, Lc8/t;

    const/4 p6, 0x2

    invoke-direct {p5, p6}, Lc8/t;-><init>(I)V

    .line 38
    new-instance p6, Lc8/x0;

    const-class p7, Ljava/lang/Float;

    invoke-direct {p6, p4, p7, p5}, Lc8/x0;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lz7/a0;)V

    .line 39
    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object p4, Lz7/y;->b:Lz7/v;

    if-ne p10, p4, :cond_2

    .line 41
    sget-object p4, Lc8/r;->b:Lc8/q;

    goto :goto_2

    .line 42
    :cond_2
    new-instance p4, Lc8/r;

    invoke-direct {p4, p10}, Lc8/r;-><init>(Lz7/y;)V

    .line 43
    new-instance p5, Lc8/q;

    const/4 p6, 0x0

    invoke-direct {p5, p6, p4}, Lc8/q;-><init>(ILjava/lang/Object;)V

    move-object p4, p5

    .line 44
    :goto_2
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object p4, Lc8/f1;->h:Lc8/v0;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object p4, Lc8/f1;->i:Lc8/v0;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance p4, Lz7/k;

    const/4 p5, 0x0

    invoke-direct {p4, p3, p5}, Lz7/k;-><init>(Lz7/a0;I)V

    .line 48
    invoke-virtual {p4}, Lz7/a0;->a()Lz7/z;

    move-result-object p4

    .line 49
    new-instance p5, Lc8/v0;

    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    const/4 p7, 0x0

    invoke-direct {p5, p6, p4, p7}, Lc8/v0;-><init>(Ljava/lang/Class;Lz7/a0;I)V

    .line 50
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance p4, Lz7/k;

    const/4 p5, 0x1

    invoke-direct {p4, p3, p5}, Lz7/k;-><init>(Lz7/a0;I)V

    .line 52
    invoke-virtual {p4}, Lz7/a0;->a()Lz7/z;

    move-result-object p3

    .line 53
    new-instance p4, Lc8/v0;

    const-class p5, Ljava/util/concurrent/atomic/AtomicLongArray;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p3, p6}, Lc8/v0;-><init>(Ljava/lang/Class;Lz7/a0;I)V

    .line 54
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object p3, Lc8/f1;->j:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object p3, Lc8/f1;->l:Lc8/x0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object p3, Lc8/f1;->q:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object p3, Lc8/f1;->r:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object p3, Lc8/f1;->m:Lc8/i0;

    .line 60
    new-instance p4, Lc8/v0;

    const-class p5, Ljava/math/BigDecimal;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p3, p6}, Lc8/v0;-><init>(Ljava/lang/Class;Lz7/a0;I)V

    .line 61
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p3, Lc8/f1;->n:Lc8/j0;

    .line 63
    new-instance p4, Lc8/v0;

    const-class p5, Ljava/math/BigInteger;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p3, p6}, Lc8/v0;-><init>(Ljava/lang/Class;Lz7/a0;I)V

    .line 64
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p3, Lc8/f1;->o:Lc8/k0;

    .line 66
    new-instance p4, Lc8/v0;

    const-class p5, Lb8/j;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p3, p6}, Lc8/v0;-><init>(Ljava/lang/Class;Lz7/a0;I)V

    .line 67
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object p3, Lc8/f1;->s:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object p3, Lc8/f1;->t:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object p3, Lc8/f1;->v:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object p3, Lc8/f1;->w:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p3, Lc8/f1;->y:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object p3, Lc8/f1;->u:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object p3, Lc8/f1;->b:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object p3, Lc8/h;->c:Lc8/e;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object p3, Lc8/f1;->x:Lc8/q;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-boolean p3, Lf8/h;->a:Z

    if-eqz p3, :cond_3

    .line 78
    sget-object p3, Lf8/h;->e:Lf8/c;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object p3, Lf8/h;->d:Lf8/a;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p3, Lf8/h;->f:Lf8/e;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_3
    sget-object p3, Lc8/b;->c:Lc8/a;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object p3, Lc8/f1;->a:Lc8/v0;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p3, Lc8/d;

    const/4 p4, 0x0

    invoke-direct {p3, v0, p4}, Lc8/d;-><init>(Lcom/bumptech/glide/manager/s;I)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p3, Lc8/d;

    const/4 p4, 0x1

    invoke-direct {p3, v0, p4}, Lc8/d;-><init>(Lcom/bumptech/glide/manager/s;I)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p7, Lc8/l;

    invoke-direct {p7, v0}, Lc8/l;-><init>(Lcom/bumptech/glide/manager/s;)V

    iput-object p7, p0, Lz7/m;->d:Lc8/l;

    .line 86
    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object p3, Lc8/f1;->B:Lc8/i;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance p9, Lc8/z;

    move-object p3, p9

    move-object p4, v0

    move-object p5, p2

    move-object p6, p1

    move-object p8, p11

    invoke-direct/range {p3 .. p8}, Lc8/z;-><init>(Lcom/bumptech/glide/manager/s;Lz7/h;Lb8/d;Lc8/l;Ljava/util/List;)V

    invoke-virtual {v1, p9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lz7/m;->e:Ljava/util/List;

    return-void
.end method

.method public static a(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public final b(Lz7/p;)Ljava/lang/Object;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    new-instance v3, Lg8/a;

    .line 5
    .line 6
    const-class v4, Lz7/s;

    .line 7
    .line 8
    invoke-direct {v3, v4}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto/16 :goto_6

    .line 15
    .line 16
    :cond_0
    new-instance v5, Lc8/o;

    .line 17
    .line 18
    invoke-direct {v5, p1}, Lc8/o;-><init>(Lz7/p;)V

    .line 19
    .line 20
    .line 21
    const-string p1, "AssertionError (GSON 2.13.1): "

    .line 22
    .line 23
    const-string v6, "Type adapter \'"

    .line 24
    .line 25
    iget v7, v5, Lh8/a;->p:I

    .line 26
    .line 27
    if-ne v7, v2, :cond_1

    .line 28
    .line 29
    iput v1, v5, Lh8/a;->p:I

    .line 30
    .line 31
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lc8/o;->e0()I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    :try_start_1
    invoke-virtual {p0, v3}, Lz7/m;->c(Lg8/a;)Lz7/a0;

    .line 35
    .line 36
    .line 37
    move-result-object v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    iget-object v3, v3, Lg8/a;->a:Ljava/lang/Class;

    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v8, v5}, Lz7/a0;->b(Lh8/a;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v9

    .line 44
    invoke-static {v3}, Lb8/h;->m(Ljava/lang/Class;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v10

    .line 48
    if-eqz v9, :cond_3

    .line 49
    .line 50
    invoke-virtual {v10, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v10

    .line 54
    if-eqz v10, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance v10, Ljava/lang/ClassCastException;

    .line 58
    .line 59
    new-instance v11, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v6, "\' returned wrong type; requested "

    .line 68
    .line 69
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v3, " but got instance of "

    .line 76
    .line 77
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v3, "\nVerify that the adapter was registered for the correct type."

    .line 88
    .line 89
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-direct {v10, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v10
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :catchall_0
    move-exception p1

    .line 101
    goto :goto_7

    .line 102
    :catch_0
    move-exception v3

    .line 103
    goto :goto_1

    .line 104
    :catch_1
    move-exception p1

    .line 105
    goto :goto_3

    .line 106
    :catch_2
    move-exception p1

    .line 107
    goto :goto_4

    .line 108
    :catch_3
    move-exception p1

    .line 109
    goto :goto_5

    .line 110
    :cond_3
    :goto_0
    invoke-virtual {v5, v7}, Lh8/a;->h0(I)V

    .line 111
    .line 112
    .line 113
    move-object v4, v9

    .line 114
    goto :goto_6

    .line 115
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 131
    :try_start_4
    const-class v4, Ljava/lang/AssertionError;

    .line 132
    .line 133
    new-array v6, v2, [Ljava/lang/Class;

    .line 134
    .line 135
    const-class v8, Ljava/lang/String;

    .line 136
    .line 137
    aput-object v8, v6, v0

    .line 138
    .line 139
    const-class v8, Ljava/lang/Throwable;

    .line 140
    .line 141
    aput-object v8, v6, v1

    .line 142
    .line 143
    invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    .line 149
    aput-object p1, v2, v0

    .line 150
    .line 151
    aput-object v3, v2, v1

    .line 152
    .line 153
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    check-cast v0, Ljava/lang/AssertionError;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :catch_4
    :try_start_5
    new-instance v0, Ljava/lang/AssertionError;

    .line 161
    .line 162
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :goto_2
    throw v0

    .line 166
    :goto_3
    new-instance v0, Lz7/q;

    .line 167
    .line 168
    invoke-direct {v0, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :goto_4
    new-instance v0, Lz7/q;

    .line 173
    .line 174
    invoke-direct {v0, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 175
    .line 176
    .line 177
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 178
    :catch_5
    move-exception p1

    .line 179
    const/4 v0, 0x1

    .line 180
    :goto_5
    if-eqz v0, :cond_4

    .line 181
    .line 182
    invoke-virtual {v5, v7}, Lh8/a;->h0(I)V

    .line 183
    .line 184
    .line 185
    :goto_6
    return-object v4

    .line 186
    :cond_4
    :try_start_6
    new-instance v0, Lz7/q;

    .line 187
    .line 188
    invoke-direct {v0, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 189
    .line 190
    .line 191
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 192
    :goto_7
    invoke-virtual {v5, v7}, Lh8/a;->h0(I)V

    .line 193
    .line 194
    .line 195
    throw p1
.end method

.method public final c(Lg8/a;)Lz7/a0;
    .locals 8

    .line 1
    iget-object v0, p0, Lz7/m;->b:Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lz7/a0;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v1, p0, Lz7/m;->a:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/util/Map;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    new-instance v2, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lz7/a0;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    return-object v3

    .line 41
    :cond_2
    const/4 v3, 0x0

    .line 42
    :goto_0
    :try_start_0
    new-instance v4, Lz7/l;

    .line 43
    .line 44
    invoke-direct {v4}, Lz7/l;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lz7/m;->e:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    if-eqz v7, :cond_5

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    check-cast v6, Lz7/b0;

    .line 68
    .line 69
    invoke-interface {v6, p0, p1}, Lz7/b0;->a(Lz7/m;Lg8/a;)Lz7/a0;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    if-eqz v6, :cond_3

    .line 74
    .line 75
    iget-object v5, v4, Lz7/l;->a:Lz7/a0;

    .line 76
    .line 77
    if-nez v5, :cond_4

    .line 78
    .line 79
    iput-object v6, v4, Lz7/l;->a:Lz7/a0;

    .line 80
    .line 81
    invoke-interface {v2, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    .line 88
    .line 89
    const-string v0, "Delegate is already set"

    .line 90
    .line 91
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 98
    .line 99
    .line 100
    :cond_6
    if-eqz v6, :cond_8

    .line 101
    .line 102
    if-eqz v3, :cond_7

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 105
    .line 106
    .line 107
    :cond_7
    return-object v6

    .line 108
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "GSON (2.13.1) cannot handle "

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :goto_2
    if-eqz v3, :cond_9

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 131
    .line 132
    .line 133
    :cond_9
    goto :goto_4

    .line 134
    :goto_3
    throw p1

    .line 135
    :goto_4
    goto :goto_3
.end method

.method public final d(Ljava/io/Writer;)Lh8/b;
    .locals 1

    .line 1
    new-instance v0, Lh8/b;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lh8/b;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lz7/m;->g:Lz7/i;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lh8/b;->R(Lz7/i;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lz7/m;->f:Z

    .line 12
    .line 13
    iput-boolean p1, v0, Lh8/b;->i:Z

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-virtual {v0, p1}, Lh8/b;->S(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-boolean p1, v0, Lh8/b;->k:Z

    .line 21
    .line 22
    return-object v0
.end method

.method public final e(Lz7/p;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Lz7/m;->d(Ljava/io/Writer;)Lh8/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p0, v1, p1}, Lz7/m;->f(Lh8/b;Lz7/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    new-instance v0, Lz7/q;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public final f(Lh8/b;Lz7/p;)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    const-string v3, "AssertionError (GSON 2.13.1): "

    .line 5
    .line 6
    iget v4, p1, Lh8/b;->h:I

    .line 7
    .line 8
    iget-boolean v5, p1, Lh8/b;->i:Z

    .line 9
    .line 10
    iget-boolean v6, p1, Lh8/b;->k:Z

    .line 11
    .line 12
    iget-boolean v7, p0, Lz7/m;->f:Z

    .line 13
    .line 14
    iput-boolean v7, p1, Lh8/b;->i:Z

    .line 15
    .line 16
    iput-boolean v2, p1, Lh8/b;->k:Z

    .line 17
    .line 18
    if-ne v4, v1, :cond_0

    .line 19
    .line 20
    iput v0, p1, Lh8/b;->h:I

    .line 21
    .line 22
    :cond_0
    :try_start_0
    sget-object v7, Lc8/f1;->z:Lc8/m;

    .line 23
    .line 24
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Lc8/m;->e(Lh8/b;Lz7/p;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v4}, Lh8/b;->S(I)V

    .line 31
    .line 32
    .line 33
    iput-boolean v5, p1, Lh8/b;->i:Z

    .line 34
    .line 35
    iput-boolean v6, p1, Lh8/b;->k:Z

    .line 36
    .line 37
    return-void

    .line 38
    :catch_0
    move-exception p2

    .line 39
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    const-class v7, Ljava/lang/AssertionError;

    .line 56
    .line 57
    new-array v8, v1, [Ljava/lang/Class;

    .line 58
    .line 59
    const-class v9, Ljava/lang/String;

    .line 60
    .line 61
    aput-object v9, v8, v2

    .line 62
    .line 63
    const-class v9, Ljava/lang/Throwable;

    .line 64
    .line 65
    aput-object v9, v8, v0

    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    .line 72
    .line 73
    aput-object v3, v1, v2

    .line 74
    .line 75
    aput-object p2, v1, v0

    .line 76
    .line 77
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    check-cast p2, Ljava/lang/AssertionError;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_1
    :try_start_3
    new-instance p2, Ljava/lang/AssertionError;

    .line 85
    .line 86
    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    throw p2

    .line 90
    :catchall_0
    move-exception p2

    .line 91
    goto :goto_1

    .line 92
    :catch_2
    move-exception p2

    .line 93
    new-instance v0, Lz7/q;

    .line 94
    .line 95
    invoke-direct {v0, p2}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :goto_1
    invoke-virtual {p1, v4}, Lh8/b;->S(I)V

    .line 100
    .line 101
    .line 102
    iput-boolean v5, p1, Lh8/b;->i:Z

    .line 103
    .line 104
    iput-boolean v6, p1, Lh8/b;->k:Z

    .line 105
    .line 106
    throw p2
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Class;Lh8/b;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string v3, "AssertionError (GSON 2.13.1): "

    .line 5
    .line 6
    new-instance v4, Lg8/a;

    .line 7
    .line 8
    invoke-direct {v4, p2}, Lg8/a;-><init>(Ljava/lang/reflect/Type;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v4}, Lz7/m;->c(Lg8/a;)Lz7/a0;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget v4, p3, Lh8/b;->h:I

    .line 16
    .line 17
    if-ne v4, v2, :cond_0

    .line 18
    .line 19
    iput v1, p3, Lh8/b;->h:I

    .line 20
    .line 21
    :cond_0
    iget-boolean v5, p3, Lh8/b;->i:Z

    .line 22
    .line 23
    iget-boolean v6, p3, Lh8/b;->k:Z

    .line 24
    .line 25
    iget-boolean v7, p0, Lz7/m;->f:Z

    .line 26
    .line 27
    iput-boolean v7, p3, Lh8/b;->i:Z

    .line 28
    .line 29
    iput-boolean v0, p3, Lh8/b;->k:Z

    .line 30
    .line 31
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lz7/a0;->c(Lh8/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v4}, Lh8/b;->S(I)V

    .line 35
    .line 36
    .line 37
    iput-boolean v5, p3, Lh8/b;->i:Z

    .line 38
    .line 39
    iput-boolean v6, p3, Lh8/b;->k:Z

    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception p1

    .line 45
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    const-class v3, Ljava/lang/AssertionError;

    .line 62
    .line 63
    new-array v7, v2, [Ljava/lang/Class;

    .line 64
    .line 65
    const-class v8, Ljava/lang/String;

    .line 66
    .line 67
    aput-object v8, v7, v0

    .line 68
    .line 69
    const-class v8, Ljava/lang/Throwable;

    .line 70
    .line 71
    aput-object v8, v7, v1

    .line 72
    .line 73
    invoke-virtual {v3, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    .line 79
    aput-object p2, v2, v0

    .line 80
    .line 81
    aput-object p1, v2, v1

    .line 82
    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/AssertionError;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_1
    :try_start_3
    new-instance p1, Ljava/lang/AssertionError;

    .line 91
    .line 92
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    throw p1

    .line 96
    :catch_2
    move-exception p1

    .line 97
    new-instance p2, Lz7/q;

    .line 98
    .line 99
    invoke-direct {p2, p1}, Lz7/q;-><init>(Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    :goto_1
    invoke-virtual {p3, v4}, Lh8/b;->S(I)V

    .line 104
    .line 105
    .line 106
    iput-boolean v5, p3, Lh8/b;->i:Z

    .line 107
    .line 108
    iput-boolean v6, p3, Lh8/b;->k:Z

    .line 109
    .line 110
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "{serializeNulls:false,factories:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lz7/m;->e:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",instanceCreators:"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lz7/m;->c:Lcom/bumptech/glide/manager/s;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "}"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
