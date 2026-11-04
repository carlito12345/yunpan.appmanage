.class public final Lh4/l;
.super Lh4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Lh4/n;


# direct methods
.method public constructor <init>(Lh4/n;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/l;->e:Lh4/n;

    .line 2
    .line 3
    iput-object p2, p0, Lh4/l;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lh4/l;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    iput-object p4, p0, Lh4/l;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p5, p0, Lh4/l;->d:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p0}, Lh4/u;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final c(Lh4/t;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lh4/t;->v(Lh4/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final d(Lh4/t;)V
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Lh4/l;->e:Lh4/n;

    .line 3
    .line 4
    iget-object v1, p0, Lh4/l;->a:Ljava/lang/Object;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lh4/l;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, p1}, Lh4/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lh4/l;->c:Ljava/lang/Object;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v2, p0, Lh4/l;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Lh4/n;->s(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method
