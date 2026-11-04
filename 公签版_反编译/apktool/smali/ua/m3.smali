.class public final Lua/m3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/wd;
.implements Lha/d9;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/m3;->a:I

    iput-object p1, p0, Lua/m3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    .line 1
    return-void
.end method

.method private final c()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lua/m3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->F:Lx9/s2;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lc6/g;->E(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lz7/s;

    .line 14
    .line 15
    invoke-direct {v1}, Lz7/s;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 19
    .line 20
    new-instance v2, Lz7/o;

    .line 21
    .line 22
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "tags"

    .line 26
    .line 27
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 31
    .line 32
    new-instance v2, Lz7/o;

    .line 33
    .line 34
    invoke-direct {v2}, Lz7/o;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v3, "keys"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lz7/s;->j(Ljava/lang/String;Lz7/p;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 43
    .line 44
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 45
    .line 46
    invoke-static {v1, v2}, Lq4/a;->V(Landroid/content/Context;Lz7/s;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 50
    .line 51
    invoke-static {v0}, Lta/m;->g(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/m3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 2
    .line 3
    iget v1, p0, Lua/m3;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->z()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->z()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public delete()V
    .locals 1

    .line 1
    iget v0, p0, Lua/m3;->a:I

    return-void
.end method

.method public t()V
    .locals 0

    .line 1
    return-void
.end method
