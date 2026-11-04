.class public final synthetic Lua/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/e;
.implements Lha/dd;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/v;->a:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lua/v;->a:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->F:Lx9/z4;

    .line 4
    .line 5
    new-instance v8, Lcom/yunpan/appmanage/bean/SwitchAppBean;

    .line 6
    .line 7
    move-object v2, v8

    .line 8
    move-object v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move-object v5, p3

    .line 11
    move-object v6, p4

    .line 12
    move-object v7, p5

    .line 13
    invoke-direct/range {v2 .. v7}, Lcom/yunpan/appmanage/bean/SwitchAppBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v8}, Lc6/g;->q(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->x()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public x(Lc6/g;Landroid/view/View;I)V
    .locals 8

    .line 1
    sget p1, Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lua/v;->a:Lcom/yunpan/appmanage/ui/ActivityAppShowAppClose;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p1, Lha/z6;

    .line 9
    .line 10
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 11
    .line 12
    new-instance v7, Ld3/g;

    .line 13
    .line 14
    const/16 p2, 0x8

    .line 15
    .line 16
    invoke-direct {v7, p3, p2, v1}, Ld3/g;-><init>(IILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const-string v5, "\u786e\u5b9a"

    .line 20
    .line 21
    const-string v6, "\u53d6\u6d88"

    .line 22
    .line 23
    const-string v3, "\u60a8\u662f\u5426\u8981\u5220\u9664\u6b64\u4efb\u52a1"

    .line 24
    .line 25
    const-string v4, ""

    .line 26
    .line 27
    move-object v0, p1

    .line 28
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
