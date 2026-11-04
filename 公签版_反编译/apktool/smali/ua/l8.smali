.class public final Lua/l8;
.super Le9/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lx9/m5;

.field public final synthetic c:I

.field public final synthetic d:Lua/q8;


# direct methods
.method public constructor <init>(Lua/q8;Lx9/m5;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/l8;->d:Lua/q8;

    .line 2
    .line 3
    iput-object p2, p0, Lua/l8;->b:Lx9/m5;

    .line 4
    .line 5
    iput p3, p0, Lua/l8;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Le9/a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/l8;->d:Lua/q8;

    .line 2
    .line 3
    iget-object v1, v0, Lua/q8;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "\u4f20\u9001\u5931\u8d25:"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lua/l8;->b:Lx9/m5;

    .line 16
    .line 17
    iget-object v3, v2, Lx9/m5;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {v1, v3}, Lcom/yunpan/appmanage/util/a0;->s(Ljava/lang/CharSequence;Z)V

    .line 28
    .line 29
    .line 30
    const-string v1, "\u5931\u8d25"

    .line 31
    .line 32
    iput-object v1, v2, Lx9/m5;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v1, v0, Lua/q8;->E:Lx9/l5;

    .line 35
    .line 36
    iget v3, p0, Lua/l8;->c:I

    .line 37
    .line 38
    invoke-virtual {v1, v3, v2}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lua/q8;->x()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final g0(Lv3/f;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lua/l8;->d:Lua/q8;

    .line 2
    .line 3
    iget-object v0, p1, Lua/q8;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "\u4e0a\u4f20\u5b8c\u6210\uff1a"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lua/l8;->b:Lx9/m5;

    .line 16
    .line 17
    iget-object v2, v1, Lx9/m5;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v2}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 28
    .line 29
    .line 30
    const-string v0, "\u5b8c\u6210"

    .line 31
    .line 32
    iput-object v0, v1, Lx9/m5;->c:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p1, Lua/q8;->E:Lx9/l5;

    .line 35
    .line 36
    iget v2, p0, Lua/l8;->c:I

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lua/q8;->x()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final r0(Lk9/d;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/text/DecimalFormat;

    .line 7
    .line 8
    const-string v2, "0.00"

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-wide v2, p1, Lk9/d;->c:J

    .line 14
    .line 15
    long-to-double v2, v2

    .line 16
    iget-wide v4, p1, Lk9/d;->b:J

    .line 17
    .line 18
    long-to-double v4, v4

    .line 19
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 20
    .line 21
    .line 22
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 23
    .line 24
    .line 25
    div-double/2addr v2, v4

    .line 26
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 27
    .line 28
    mul-double v2, v2, v4

    .line 29
    .line 30
    const-string p1, "%"

    .line 31
    .line 32
    invoke-static {v1, v2, v3, v0, p1}, Lta/q;->n(Ljava/text/DecimalFormat;DLjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object v0, p0, Lua/l8;->b:Lx9/m5;

    .line 37
    .line 38
    iput-object p1, v0, Lx9/m5;->c:Ljava/lang/String;

    .line 39
    .line 40
    iget-object p1, p0, Lua/l8;->d:Lua/q8;

    .line 41
    .line 42
    iget-object p1, p1, Lua/q8;->E:Lx9/l5;

    .line 43
    .line 44
    iget v1, p0, Lua/l8;->c:I

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
