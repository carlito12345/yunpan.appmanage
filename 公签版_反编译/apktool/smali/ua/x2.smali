.class public final Lua/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/car/IALCarVehicleControlPropertyListener;


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/x2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

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

.method public final notifyCarVehicleControlPropertyEvent(Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/x2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->R:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u8f66\u8f86\u63a7\u5236\u5c5e\u6027\u56de\u8c03: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->getId()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v2, " , "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/autolink/adapterinterface/car/ALCarPropertyEvent;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
