.class public final Lua/v2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autolink/adapterinterface/car/IALCarSpeedListener;


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/v2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

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

.method public final notifySpeedChange(FI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/v2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->O:Landroid/widget/TextView;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "\u901f\u5ea6: "

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
    const-string p1, " , "

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
