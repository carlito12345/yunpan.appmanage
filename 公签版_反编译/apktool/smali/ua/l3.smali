.class public final synthetic Lua/l3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ia;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

.field public final synthetic c:Lz7/o;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;Lz7/o;I)V
    .locals 0

    .line 1
    iput p3, p0, Lua/l3;->a:I

    iput-object p1, p0, Lua/l3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    iput-object p2, p0, Lua/l3;->c:Lz7/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lua/l3;->c:Lz7/o;

    .line 2
    .line 3
    iget v1, p0, Lua/l3;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 9
    .line 10
    iget-object v3, p0, Lua/l3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v1, Lha/e9;

    .line 16
    .line 17
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 18
    .line 19
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    new-instance v7, Lua/m3;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    invoke-direct {v7, v3, p1}, Lua/m3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 33
    .line 34
    .line 35
    move-object v2, v1

    .line 36
    invoke-direct/range {v2 .. v7}, Lha/e9;-><init>(Landroid/app/Activity;Lda/g;Lz7/s;Lz7/s;Lha/d9;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_0
    sget v1, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->L:I

    .line 44
    .line 45
    iget-object v3, p0, Lua/l3;->b:Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v1, Lha/e9;

    .line 51
    .line 52
    iget-object v4, v3, Lda/g;->A:Lda/g;

    .line 53
    .line 54
    iget-object v5, v3, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;->G:Lz7/s;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lz7/o;->l(I)Lz7/p;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lz7/p;->g()Lz7/s;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    new-instance v7, Lua/m3;

    .line 65
    .line 66
    const/4 p1, 0x2

    .line 67
    invoke-direct {v7, v3, p1}, Lua/m3;-><init>(Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcat;I)V

    .line 68
    .line 69
    .line 70
    move-object v2, v1

    .line 71
    invoke-direct/range {v2 .. v7}, Lha/e9;-><init>(Landroid/app/Activity;Lda/g;Lz7/s;Lz7/s;Lha/d9;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Lha/a4;->show()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
