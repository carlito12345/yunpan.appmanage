.class public final Lh4/v;
.super Lh4/u;
.source "SourceFile"


# instance fields
.field public final synthetic a:La0/e;

.field public final synthetic b:Lh4/w;


# direct methods
.method public constructor <init>(Lh4/w;La0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh4/v;->b:Lh4/w;

    .line 2
    .line 3
    iput-object p2, p0, Lh4/v;->a:La0/e;

    .line 4
    .line 5
    invoke-direct {p0}, Lh4/u;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Lh4/t;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh4/v;->b:Lh4/w;

    .line 2
    .line 3
    iget-object v0, v0, Lh4/w;->b:Landroid/view/ViewGroup;

    .line 4
    .line 5
    iget-object v1, p0, Lh4/v;->a:La0/e;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, La0/t;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Lh4/t;->v(Lh4/s;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
