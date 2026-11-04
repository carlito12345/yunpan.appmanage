.class public final synthetic Lha/t1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ea;
.implements Lha/ga;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lha/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/t1;->c:Landroid/widget/TextView;

    iput-object p2, p0, Lha/t1;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/widget/TextView;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lha/t1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha/t1;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lha/t1;->c:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lha/t1;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lha/t1;->b:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget v2, p0, Lha/t1;->a:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget v2, Lcom/yunpan/appmanage/ui/ActivityKeyMapLogcatSet;->H:I

    .line 11
    .line 12
    sget-object v2, Lwa/t;->a:Lwa/u;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 19
    .line 20
    iget v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    :try_start_0
    iput v3, v2, Lwa/u;->L:I

    .line 26
    .line 27
    iget-object v4, v2, Lwa/u;->b:Lz7/s;

    .line 28
    .line 29
    const-string v5, "LogcatKeymap_LogLevel"

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v4, v5, v3}, Lz7/s;->l(Ljava/lang/String;Ljava/lang/Number;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    invoke-virtual {v2}, Lwa/u;->i()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Ljava/lang/CharSequence;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
