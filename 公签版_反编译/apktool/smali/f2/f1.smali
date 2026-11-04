.class public final Lf2/f1;
.super Lr1/q0;
.source "SourceFile"


# static fields
.field public static final g:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Lr1/y;

.field public final f:Lr1/u;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf2/f1;->g:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ldd/c;

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    invoke-direct {v0, v1}, Ldd/c;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lu7/g0;->b:Lu7/e0;

    .line 15
    .line 16
    sget-object v1, Lu7/y0;->e:Lu7/y0;

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    sget-object v7, Lu7/y0;->e:Lu7/y0;

    .line 23
    .line 24
    new-instance v1, Lr1/t;

    .line 25
    .line 26
    invoke-direct {v1}, Lr1/t;-><init>()V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lr1/w;->a:Lr1/w;

    .line 30
    .line 31
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    new-instance v2, Lr1/v;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-direct/range {v2 .. v9}, Lr1/v;-><init>(Landroid/net/Uri;Ljava/lang/String;Lif/a;Ljava/util/List;Lu7/g0;J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance v2, Lr1/y;

    .line 48
    .line 49
    invoke-virtual {v0}, Ldd/c;->b()Lr1/s;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lr1/t;->a()Lr1/u;

    .line 53
    .line 54
    .line 55
    sget-object v0, Lr1/b0;->B:Lr1/b0;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>(JZZLr1/y;)V
    .locals 0

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    iget-object p4, p5, Lr1/y;->c:Lr1/u;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p4, 0x0

    .line 7
    :goto_0
    invoke-direct {p0}, Lr1/q0;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lf2/f1;->b:J

    .line 11
    .line 12
    iput-wide p1, p0, Lf2/f1;->c:J

    .line 13
    .line 14
    iput-boolean p3, p0, Lf2/f1;->d:Z

    .line 15
    .line 16
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iput-object p5, p0, Lf2/f1;->e:Lr1/y;

    .line 20
    .line 21
    iput-object p4, p0, Lf2/f1;->f:Lr1/u;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lf2/f1;->g:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    :goto_0
    return p1
.end method

.method public final f(ILr1/o0;Z)Lr1/o0;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, La9/o;->m(II)V

    .line 3
    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    sget-object p1, Lf2/f1;->g:Ljava/lang/Object;

    .line 8
    .line 9
    :goto_0
    move-object v2, p1

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object v8, Lr1/c;->c:Lr1/c;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v1, 0x0

    .line 21
    iget-wide v4, p0, Lf2/f1;->b:J

    .line 22
    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    move-object v0, p2

    .line 26
    invoke-virtual/range {v0 .. v9}, Lr1/o0;->h(Ljava/lang/Integer;Ljava/lang/Object;IJJLr1/c;Z)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public final h()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final l(I)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, La9/o;->m(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Lf2/f1;->g:Ljava/lang/Object;

    .line 6
    .line 7
    return-object p1
.end method

.method public final m(ILr1/p0;J)Lr1/p0;
    .locals 9

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, La9/o;->m(II)V

    .line 3
    .line 4
    .line 5
    sget-object p1, Lr1/p0;->p:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v4, p0, Lf2/f1;->f:Lr1/u;

    .line 8
    .line 9
    iget-wide v7, p0, Lf2/f1;->c:J

    .line 10
    .line 11
    iget-object v1, p0, Lf2/f1;->e:Lr1/y;

    .line 12
    .line 13
    iget-boolean v2, p0, Lf2/f1;->d:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    invoke-virtual/range {v0 .. v8}, Lr1/p0;->b(Lr1/y;ZZLr1/u;JJ)V

    .line 20
    .line 21
    .line 22
    return-object p2
.end method

.method public final o()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
