.class public final Lua/b9;
.super Lha/l2;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/yunpan/appmanage/bean/WpPathBean;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lua/i9;


# direct methods
.method public constructor <init>(Lua/i9;Lcom/yunpan/appmanage/bean/WpPathBean;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/b9;->e:Lua/i9;

    .line 2
    .line 3
    iput-object p2, p0, Lua/b9;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 4
    .line 5
    iput-object p3, p0, Lua/b9;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lua/b9;->d:I

    .line 8
    .line 9
    const/16 p1, 0x1c

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lha/l2;-><init>(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/yunpan/appmanage/util/a0;->t(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onComplete()V
    .locals 2

    .line 1
    const-string v0, "\u4fee\u6539\u6210\u529f"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/hjq/toast/Toaster;->show(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lua/b9;->b:Lcom/yunpan/appmanage/bean/WpPathBean;

    .line 7
    .line 8
    iget-object v1, p0, Lua/b9;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v1, v0, Lcom/yunpan/appmanage/bean/WpPathBean;->name:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v0, p0, Lua/b9;->e:Lua/i9;

    .line 13
    .line 14
    iget-object v0, v0, Lua/i9;->q:Lx9/y5;

    .line 15
    .line 16
    iget v1, p0, Lua/b9;->d:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/m1;->e(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
