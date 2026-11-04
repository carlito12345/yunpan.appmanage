.class public final synthetic Lcom/hjq/permissions/core/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/hjq/permissions/core/b;->a:I

    iput-object p1, p0, Lcom/hjq/permissions/core/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/hjq/permissions/core/b;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hjq/permissions/core/b;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/hjq/permissions/core/b;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/hjq/permissions/core/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/hjq/permissions/core/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lua/o7;

    .line 9
    .line 10
    iget-object v0, v0, Lua/o7;->e:Lcom/yunpan/appmanage/ui/ActivityTextIflytek;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/yunpan/appmanage/ui/ActivityTextIflytek;->C:Landroid/widget/TextView;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/hjq/permissions/core/b;->c:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " , "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/hjq/permissions/core/b;->d:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v2, p0, Lcom/hjq/permissions/core/b;->e:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :pswitch_0
    iget-object v0, p0, Lcom/hjq/permissions/core/b;->e:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/hjq/permissions/core/PermissionDescriptionLogic;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/hjq/permissions/core/b;->b:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/hjq/permissions/core/b;->c:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Ljava/util/List;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/hjq/permissions/core/b;->d:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v3, Lcom/hjq/permissions/permission/PermissionChannel;

    .line 71
    .line 72
    invoke-static {v1, v2, v3, v0}, Lcom/hjq/permissions/core/PermissionRequestMainLogic;->b(Lcom/hjq/permissions/fragment/factory/PermissionFragmentFactory;Ljava/util/List;Lcom/hjq/permissions/permission/PermissionChannel;Lcom/hjq/permissions/core/PermissionDescriptionLogic;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
