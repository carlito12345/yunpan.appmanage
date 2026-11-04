.class public final synthetic Lcom/gj/server/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Process;

.field public final synthetic b:Lcom/yunpan/appmanage/shizuku/CmdResult;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gj/server/c;->a:Ljava/lang/Process;

    iput-object p2, p0, Lcom/gj/server/c;->b:Lcom/yunpan/appmanage/shizuku/CmdResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gj/server/c;->b:Lcom/yunpan/appmanage/shizuku/CmdResult;

    iget-object v1, p0, Lcom/gj/server/c;->a:Ljava/lang/Process;

    invoke-static {v1, v0}, Lcom/gj/server/GjService$1;->h(Ljava/lang/Process;Lcom/yunpan/appmanage/shizuku/CmdResult;)V

    return-void
.end method
