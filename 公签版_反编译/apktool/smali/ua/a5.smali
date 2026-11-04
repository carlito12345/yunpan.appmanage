.class public final Lua/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/Reverse$ReverseStateListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/a5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReverseStateChanged(Z)V
    .locals 2

    .line 1
    new-instance v0, La2/f0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, La2/f0;-><init>(Ljava/lang/Object;ZI)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lua/a5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
