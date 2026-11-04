.class public final Lq/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/a;


# instance fields
.field public final synthetic a:Lq/i;


# direct methods
.method public constructor <init>(Lq/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/h;->a:Lq/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Lq/h;->a:Lq/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lq/i;->r()Lq/m;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lq/a0;

    .line 9
    .line 10
    iget-object v3, v2, Lq/a0;->k:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 23
    .line 24
    .line 25
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v5, 0x15

    .line 28
    .line 29
    if-ge v4, v5, :cond_2

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v5, v4, Landroid/view/LayoutInflater$Factory2;

    .line 36
    .line 37
    if-eqz v5, :cond_0

    .line 38
    .line 39
    check-cast v4, Landroid/view/LayoutInflater$Factory2;

    .line 40
    .line 41
    invoke-static {v3, v4}, Lcom/bumptech/glide/c;->v(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3, v2}, Lcom/bumptech/glide/c;->v(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v3}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    instance-of v2, v2, Lq/a0;

    .line 54
    .line 55
    :cond_2
    :goto_0
    iget-object v0, v0, Landroidx/activity/m;->e:Lb4/f;

    .line 56
    .line 57
    iget-object v0, v0, Lb4/f;->b:Lb4/e;

    .line 58
    .line 59
    const-string v2, "androidx:appcompat"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Lb4/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Lq/m;->b()V

    .line 65
    .line 66
    .line 67
    return-void
.end method
