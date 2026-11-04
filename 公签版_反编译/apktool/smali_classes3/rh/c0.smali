.class public abstract Lrh/c0;
.super Lrh/p;
.source "SourceFile"


# instance fields
.field public final a:Lrh/p;

.field public b:Z

.field public final c:Loh/b;


# direct methods
.method public constructor <init>(Lrh/p;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lrh/p;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lah/a;

    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lah/a;-><init>(I)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Loh/b;

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v0, v2}, Loh/b;-><init>(Ljava/util/function/Supplier;I)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lrh/c0;->c:Loh/b;

    .line 18
    .line 19
    iput-object p1, p0, Lrh/c0;->a:Lrh/p;

    .line 20
    .line 21
    invoke-virtual {p1}, Lrh/p;->f()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iput-boolean p1, p0, Lrh/c0;->b:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public b(Lph/l;Lph/l;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lrh/c0;->g(Lph/l;Lph/q;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final c(Lph/l;Lph/p;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lrh/c0;->g(Lph/l;Lph/q;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrh/c0;->c:Loh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/IdentityHashMap;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lrh/c0;->a:Lrh/p;

    .line 13
    .line 14
    invoke-virtual {v0}, Lrh/p;->e()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrh/c0;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract g(Lph/l;Lph/q;)Z
.end method

.method public final h(Lph/l;Lph/q;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrh/c0;->c:Loh/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Loh/a;->c:La2/n;

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Map;

    .line 16
    .line 17
    new-instance v1, Lrh/w;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lrh/w;-><init>(Lrh/c0;Lph/l;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, p2, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method
