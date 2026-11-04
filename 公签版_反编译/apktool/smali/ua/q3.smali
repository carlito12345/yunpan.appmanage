.class public final Lua/q3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w7;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/q3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    iput p2, p0, Lua/q3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lz7/s;)V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "maps"

    .line 3
    .line 4
    iget-object v2, p0, Lua/q3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 5
    .line 6
    iget v3, p0, Lua/q3;->a:I

    .line 7
    .line 8
    if-ne v3, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, p1}, Lz7/o;->k(Lz7/p;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 26
    .line 27
    invoke-virtual {v0, v3, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v3, p1}, Lz7/o;->o(ILz7/p;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->K:I

    .line 40
    .line 41
    iget-object p1, v2, Lda/g;->A:Lda/g;

    .line 42
    .line 43
    iget-object v0, v2, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public delete()V
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    iget v1, p0, Lua/q3;->a:I

    .line 3
    .line 4
    if-eq v1, v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lua/q3;->b:Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->F:Lx9/s2;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 11
    .line 12
    .line 13
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 14
    .line 15
    const-string v3, "maps"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Lz7/o;->n(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapFlyOS18;->H:Lz7/s;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lq4/a;->T(Landroid/content/Context;Lz7/s;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
