.class public final Lua/c3;
.super Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/c3;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/app/vehicleservice/IVehicleControlCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOnlySyncFloatData(IF)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lua/c3;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lcom/yunpan/appmanage/ui/ActivityJieTText2;->x(Lcom/yunpan/appmanage/ui/ActivityJieTText2;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onOnlySyncIntData(II)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lua/c3;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 19
    .line 20
    invoke-static {v0, p1, p2}, Lcom/yunpan/appmanage/ui/ActivityJieTText2;->x(Lcom/yunpan/appmanage/ui/ActivityJieTText2;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onReceiveFloat(IFZ)V
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p0, Lua/c3;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 19
    .line 20
    invoke-static {p3, p1, p2}, Lcom/yunpan/appmanage/ui/ActivityJieTText2;->x(Lcom/yunpan/appmanage/ui/ActivityJieTText2;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onReceiveInt(IIZ)V
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p2, ""

    .line 10
    .line 11
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object p3, p0, Lua/c3;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText2;

    .line 19
    .line 20
    invoke-static {p3, p1, p2}, Lcom/yunpan/appmanage/ui/ActivityJieTText2;->x(Lcom/yunpan/appmanage/ui/ActivityJieTText2;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
