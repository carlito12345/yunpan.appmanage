.class public final synthetic Lha/l9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/ga;
.implements Lea/c;


# instance fields
.field public final synthetic a:Lha/m9;


# direct methods
.method public synthetic constructor <init>(Lha/m9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lha/l9;->a:Lha/m9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lha/l9;->a:Lha/m9;

    .line 2
    .line 3
    iget-object v1, v0, Lha/m9;->g:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v2, v0, Lha/m9;->n:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyName:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lha/m9;->h:Landroid/widget/EditText;

    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;

    .line 25
    .line 26
    iget p1, p1, Lcom/yunpan/appmanage/bean/KeyCodeBean;->keyCode:I

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lha/l9;->a:Lha/m9;

    .line 2
    .line 3
    iget-object v0, v0, Lha/m9;->h:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
