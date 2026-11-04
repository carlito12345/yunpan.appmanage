.class public final Lc1/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lc1/b;->a:I

    iput-object p2, p0, Lc1/b;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lc1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw/g2;

    .line 9
    .line 10
    iget-object v1, v0, Lw/g2;->B:Lw/z;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lw/g2;->show()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lk4/g;

    .line 33
    .line 34
    invoke-virtual {v0}, Lk4/g;->c()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_2
    const/4 v0, 0x1

    .line 39
    iget-object v1, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Lc1/c;

    .line 42
    .line 43
    iput-boolean v0, v1, Lc1/c;->a:Z

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInvalidated()V
    .locals 2

    .line 1
    iget v0, p0, Lc1/b;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lw/g2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lw/g2;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->h()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lk4/g;

    .line 25
    .line 26
    invoke-virtual {v0}, Lk4/g;->c()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    const/4 v0, 0x0

    .line 31
    iget-object v1, p0, Lc1/b;->b:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Lc1/c;

    .line 34
    .line 35
    iput-boolean v0, v1, Lc1/c;->a:Z

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
