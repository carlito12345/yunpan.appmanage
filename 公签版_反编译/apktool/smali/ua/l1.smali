.class public final synthetic Lua/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;


# direct methods
.method public synthetic constructor <init>(Lcom/yunpan/appmanage/ui/ActivityDisplayManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lua/l1;->a:I

    iput-object p1, p0, Lua/l1;->b:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget p1, p0, Lua/l1;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->N:I

    .line 7
    .line 8
    iget-object v1, p0, Lua/l1;->b:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance p1, Lha/z6;

    .line 14
    .line 15
    iget-object v2, v1, Lda/g;->A:Lda/g;

    .line 16
    .line 17
    new-instance v7, Ls5/c;

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-direct {v7, v0}, Ls5/c;-><init>(I)V

    .line 21
    .line 22
    .line 23
    const-string v5, "\u660e\u767d"

    .line 24
    .line 25
    const-string v6, ""

    .line 26
    .line 27
    const-string v3, "\u6ce8\uff1a\u76ee\u524d\u6b64\u529f\u80fd\u4ec5\u4f9b\u5a31\u4e50\u6d4b\u8bd5\u3001\u7814\u7a76\u7528\u9014\uff0c\u8bf7\u52a1\u5fc5\u9075\u5b88\u6cd5\u5f8b\u6cd5\u89c4\uff0c\u884c\u8f66\u8fc7\u7a0b\u4e2d\u8bf7\u52ff\u6295\u5c4f-\u4eea\u8868\u76d8\uff0c\u52a1\u5fc5\u4fdd\u7559\u4eea\u8868\u76d8\u5173\u952e\u4fe1\u606f\uff08\u6545\u969c\u6807\u8bb0\u3001\u65f6\u901f\u8868\u3001\u7b49\u7b49\u884c\u8f66\u5173\u952e\u4fe1\u606f\uff09\uff01\uff01\uff01\u518d\u6b21\u58f0\u660e\uff1a\u6b64\u529f\u80fd\u4ec5\u4f9b\u5b66\u4e60\u7814\u7a76\uff0c\u8bf7\u52ff\u7528\u4e8e\u975e\u6cd5\u7528\u9014\uff01\uff01\uff01\u53e6\u5916\uff1a\u5982\u679c\u6295\u5c4f\u540e\u4e0d\u663e\u793a\uff0c\u90a3\u5c31\u662f\u539f\u8f66\u5e94\u7528\u5728\u4e0a\u5c42\u906e\u6321\u4e86\uff0c\u53ef\u8003\u8651\u5c06\u539f\u8f66\u90a3\u4e2aapp\u7981\u7528\u540e\u5373\u53ef\u663e\u793a\uff08\u614e\u91cd\uff0c\u4e0d\u5efa\u8bae\u8fd9\u4e48\u505a\uff0c\u7814\u7a76\u6d4b\u8bd5\u540e\uff0c\u8bf7\u52a1\u5fc5\u6062\u590d\uff09!!!\u5982\u679c\u8f66\u82af\u7247\u6027\u80fd\u4e0d\u8db3\uff0c\u51fa\u73b0\u5361\u987f\u7684\u8bdd\uff0c\u8bf7\u52ff\u4f7f\u7528"

    .line 28
    .line 29
    const-string v4, "\u4eea\u8868\u76d8\uff1a\u8bf7\u52a1\u5fc5\u5728\u8f66\u8f86\u505c\u6b62\u65f6\u6d4b\u8bd5\uff0c\u8bf7\u9075\u5b88\u6cd5\u5f8b\u6cd5\u89c4\uff01\uff01\uff01"

    .line 30
    .line 31
    move-object v0, p1

    .line 32
    invoke-direct/range {v0 .. v7}, Lha/z6;-><init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lha/wd;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lha/a4;->show()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :pswitch_0
    sget p1, Lcom/yunpan/appmanage/ui/ActivityDisplayManager;->N:I

    .line 40
    .line 41
    iget-object p1, p0, Lua/l1;->b:Lcom/yunpan/appmanage/ui/ActivityDisplayManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
