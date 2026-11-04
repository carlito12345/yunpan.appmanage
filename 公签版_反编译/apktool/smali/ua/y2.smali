.class public final Lua/y2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/car/IALCarSteerListener;


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/y2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final notifySteerChange(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/y2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->S:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u65b9\u5411\u76d8\u8f6c\u89d2: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
