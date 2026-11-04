.class public final Lua/a4;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/yunpan/appmanage/ui/ActivityNezha;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNezha;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/a4;->b:I

    iput-object p1, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    const/16 p1, 0x1c

    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget v0, p0, Lua/a4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->y(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    iget-object v0, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 41
    .line 42
    const-string v1, ""

    .line 43
    .line 44
    invoke-static {v0, v1}, Ll2/z;->r(Lha/u9;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v0, 0x0

    .line 60
    invoke-static {p1, v0}, Lcom/yunpan/appmanage/util/a0;->z(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgc/b;)V
    .locals 1

    .line 1
    iget p1, p0, Lua/a4;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 9
    .line 10
    const-string v0, "\u63d0\u6743\u4e2d"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 19
    .line 20
    const-string v0, "\u4fee\u6539\u4e2d"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lha/u9;->c(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onComplete()V
    .locals 2

    .line 1
    iget v0, p0, Lua/a4;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 9
    .line 10
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 11
    .line 12
    .line 13
    const-string v0, "\u63d0\u6743\u6210\u529f"

    .line 14
    .line 15
    invoke-static {v0}, Lcom/yunpan/appmanage/util/a0;->w(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_0
    iget-object v0, p0, Lua/a4;->c:Lcom/yunpan/appmanage/ui/ActivityNezha;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityNezha;->E:Lha/u9;

    .line 22
    .line 23
    invoke-virtual {v0}, Lha/u9;->a()V

    .line 24
    .line 25
    .line 26
    sget-object v0, Lfa/b0;->a:La2/w0;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, La2/w0;->P()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "\u6b63\u5728\u5c1d\u8bd5\u8fde\u63a5adb"

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/yunpan/appmanage/util/a0;->v(Ljava/lang/CharSequence;Z)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lfa/h;->a:Lfa/j;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lfa/j;->h(Lua/h6;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
