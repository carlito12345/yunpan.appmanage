.class public final synthetic Lya/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lya/e;


# direct methods
.method public synthetic constructor <init>(Lya/e;I)V
    .locals 0

    .line 1
    iput p2, p0, Lya/b;->a:I

    iput-object p1, p0, Lya/b;->b:Lya/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lya/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [I

    .line 8
    .line 9
    iget-object v1, p0, Lya/b;->b:Lya/e;

    .line 10
    .line 11
    iget-object v2, v1, Lya/e;->i:Landroid/widget/ImageView;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, v1, Lya/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    aget v3, v0, v3

    .line 20
    .line 21
    const-string v4, "floatButton_x"

    .line 22
    .line 23
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    iget-object v2, v1, Lya/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    aget v0, v0, v3

    .line 30
    .line 31
    const-string v3, "floatButton_y"

    .line 32
    .line 33
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    iget-object v0, v1, Lya/e;->c:Landroid/content/SharedPreferences$Editor;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lya/b;->b:Lya/e;

    .line 43
    .line 44
    invoke-virtual {v0}, Lya/e;->a()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
