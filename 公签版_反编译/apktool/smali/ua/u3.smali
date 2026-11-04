.class public final Lua/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/c8;
.implements Lha/w7;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;II)V
    .locals 0

    .line 1
    iput p3, p0, Lua/u3;->a:I

    iput-object p1, p0, Lua/u3;->c:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    iput p2, p0, Lua/u3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lz7/s;)V
    .locals 4

    .line 1
    iget v0, p0, Lua/u3;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lua/u3;->c:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 4
    .line 5
    const-string v2, "maps"

    .line 6
    .line 7
    iget v3, p0, Lua/u3;->a:I

    .line 8
    .line 9
    packed-switch v3, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v3, -0x1

    .line 13
    if-ne v0, v3, :cond_0

    .line 14
    .line 15
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lz7/o;->k(Lz7/p;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 31
    .line 32
    invoke-virtual {v3, v0, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2, v0, p1}, Lz7/o;->o(ILz7/p;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->P:I

    .line 45
    .line 46
    iget-object p1, v1, Lda/g;->A:Lda/g;

    .line 47
    .line 48
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lq4/a;->U(Lda/g;Lz7/s;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, v1, Lda/g;->A:Lda/g;

    .line 54
    .line 55
    invoke-static {p1}, Lta/m;->f(Lda/g;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :pswitch_0
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 60
    .line 61
    invoke-virtual {v3, v0, p1}, Lc6/g;->D(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iget-object v3, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 65
    .line 66
    invoke-virtual {v3, v2}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2, v0, p1}, Lz7/o;->o(ILz7/p;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v1, Lda/g;->A:Lda/g;

    .line 74
    .line 75
    iget-object v0, v1, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 76
    .line 77
    invoke-static {p1, v0}, Lq4/a;->U(Lda/g;Lz7/s;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, v1, Lda/g;->A:Lda/g;

    .line 81
    .line 82
    invoke-static {p1}, Lta/m;->f(Lda/g;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final delete()V
    .locals 4

    .line 1
    iget v0, p0, Lua/u3;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    iget v1, p0, Lua/u3;->b:I

    .line 8
    .line 9
    if-eq v1, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lua/u3;->c:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 12
    .line 13
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lc6/g;->C(I)V

    .line 16
    .line 17
    .line 18
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 19
    .line 20
    const-string v3, "maps"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v1}, Lz7/o;->n(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 30
    .line 31
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 32
    .line 33
    invoke-static {v1, v2}, Lq4/a;->U(Lda/g;Lz7/s;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 37
    .line 38
    invoke-static {v0}, Lta/m;->f(Lda/g;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lua/u3;->c:Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->F:Lx9/s2;

    .line 45
    .line 46
    iget v2, p0, Lua/u3;->b:I

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Lc6/g;->C(I)V

    .line 49
    .line 50
    .line 51
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 52
    .line 53
    const-string v3, "maps"

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Lz7/s;->p(Ljava/lang/String;)Lz7/o;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Lz7/o;->n(I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lda/g;->A:Lda/g;

    .line 63
    .line 64
    iget-object v2, v0, Lcom/yunpan/appmanage/ui/ActivityKeymapJieT;->H:Lz7/s;

    .line 65
    .line 66
    invoke-static {v1, v2}, Lq4/a;->U(Lda/g;Lz7/s;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lda/g;->A:Lda/g;

    .line 70
    .line 71
    invoke-static {v0}, Lta/m;->f(Lda/g;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
