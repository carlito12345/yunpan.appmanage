.class public final Lua/d5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hsae/autosdk/reverse/Reverse$AvmListener;


# instance fields
.field public final synthetic a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;


# direct methods
.method public constructor <init>(Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lua/d5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAVMStatusAndRequestResponseNoIPA(BB)V
    .locals 1

    .line 1
    new-instance v0, Lua/b5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lua/b5;-><init>(Lua/d5;BB)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lua/d5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onAVMStatusAndRequestResponseWithIPA(BBBBBBBB)V
    .locals 11

    .line 1
    new-instance v10, Lua/c5;

    .line 2
    .line 3
    move-object v0, v10

    .line 4
    move-object v1, p0

    .line 5
    move v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    move/from16 v6, p5

    .line 10
    .line 11
    move/from16 v7, p6

    .line 12
    .line 13
    move/from16 v8, p7

    .line 14
    .line 15
    move/from16 v9, p8

    .line 16
    .line 17
    invoke-direct/range {v0 .. v9}, Lua/c5;-><init>(Lua/d5;BBBBBBBB)V

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    iget-object v1, v0, Lua/d5;->a:Lcom/yunpan/appmanage/ui/ActivityNissanTextReverse;

    .line 22
    .line 23
    invoke-virtual {v1, v10}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
