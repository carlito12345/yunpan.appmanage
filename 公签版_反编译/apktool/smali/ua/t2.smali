.class public final Lua/t2;
.super Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/yunpan/appmanage/ui/ActivityJieTText;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityJieTText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/t2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/autolink/adapterinterface/IHardKeyCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKeyEvent(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lua/t2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->C:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u6309\u952e\u4e8b\u4ef6: "

    .line 6
    .line 7
    const-string v2, " "

    .line 8
    .line 9
    invoke-static {p1, p2, v1, v2, v2}, Lta/q;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onKeyPressed(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/t2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->D:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u6309\u952e\u6309\u4e0b: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onKeyReleased(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lua/t2;->e:Lcom/yunpan/appmanage/ui/ActivityJieTText;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityJieTText;->E:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u6309\u952e\u677e\u5f00: "

    .line 6
    .line 7
    invoke-static {v1, p1, v0}, Lta/q;->s(Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
