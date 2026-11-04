.class public final Lcom/bumptech/glide/manager/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/h;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/v;

.field public final synthetic b:La2/g1;


# direct methods
.method public constructor <init>(La2/g1;Landroidx/lifecycle/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/manager/i;->b:La2/g1;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bumptech/glide/manager/i;->a:Landroidx/lifecycle/v;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/manager/i;->b:La2/g1;

    .line 2
    .line 3
    iget-object v0, v0, La2/g1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bumptech/glide/manager/i;->a:Landroidx/lifecycle/v;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e()V
    .locals 0

    .line 1
    return-void
.end method

.method public final k()V
    .locals 0

    .line 1
    return-void
.end method
