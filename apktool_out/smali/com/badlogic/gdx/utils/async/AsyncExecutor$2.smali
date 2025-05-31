.class Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;
.super Ljava/lang/Object;
.source "AsyncExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/utils/async/AsyncExecutor;->submit(Lcom/badlogic/gdx/utils/async/AsyncTask;)Lcom/badlogic/gdx/utils/async/AsyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field final synthetic val$task:Lcom/badlogic/gdx/utils/async/AsyncTask;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/utils/async/AsyncExecutor;Lcom/badlogic/gdx/utils/async/AsyncTask;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;->this$0:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    iput-object p2, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;->val$task:Lcom/badlogic/gdx/utils/async/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/utils/async/AsyncExecutor$2;->val$task:Lcom/badlogic/gdx/utils/async/AsyncTask;

    invoke-interface {v0}, Lcom/badlogic/gdx/utils/async/AsyncTask;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
