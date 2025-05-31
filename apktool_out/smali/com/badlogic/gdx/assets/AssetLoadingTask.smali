.class Lcom/badlogic/gdx/assets/AssetLoadingTask;
.super Ljava/lang/Object;
.source "AssetLoadingTask.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/async/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/utils/async/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field volatile asset:Ljava/lang/Object;

.field final assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

.field volatile asyncDone:Z

.field volatile cancel:Z

.field volatile dependencies:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field volatile dependenciesLoaded:Z

.field volatile depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/async/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

.field volatile loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/async/AsyncResult",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

.field manager:Lcom/badlogic/gdx/assets/AssetManager;

.field final startTime:J

.field ticks:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/assets/AssetDescriptor;Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/utils/async/AsyncExecutor;)V
    .locals 2
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "assetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;
    .param p3, "loader"    # Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .param p4, "threadPool"    # Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asyncDone:Z

    .line 42
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    .line 44
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    .line 45
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    .line 46
    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    .line 48
    iput v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->ticks:I

    .line 49
    iput-boolean v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->cancel:Z

    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    .line 53
    iput-object p2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    .line 54
    iput-object p3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    .line 55
    iput-object p4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    .line 56
    iget-object v0, p1, Lcom/badlogic/gdx/assets/AssetManager;->log:Lcom/badlogic/gdx/utils/Logger;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Logger;->getLevel()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->startTime:J

    .line 57
    return-void

    .line 56
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private handleAsyncLoader()V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;

    .line 111
    .local v0, "asyncLoader":Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
    iget-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    if-nez v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->submit(Lcom/badlogic/gdx/utils/async/AsyncTask;)Lcom/badlogic/gdx/utils/async/AsyncResult;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/async/AsyncResult;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->depsFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/async/AsyncResult;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    .line 122
    iget-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asyncDone:Z

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load dependencies of asset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 128
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asyncDone:Z

    if-nez v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->executor:Lcom/badlogic/gdx/utils/async/AsyncExecutor;

    invoke-virtual {v2, p0}, Lcom/badlogic/gdx/utils/async/AsyncExecutor;->submit(Lcom/badlogic/gdx/utils/async/AsyncTask;)Lcom/badlogic/gdx/utils/async/AsyncResult;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    goto :goto_0

    .line 131
    :cond_3
    iget-boolean v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asyncDone:Z

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_4
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/async/AsyncResult;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    :try_start_1
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loadFuture:Lcom/badlogic/gdx/utils/async/AsyncResult;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/async/AsyncResult;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v4, v5}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v5, v5, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto/16 :goto_0

    .line 136
    :catch_1
    move-exception v1

    .line 137
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t load asset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleSyncLoader()V
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;

    .line 96
    .local v0, "syncLoader":Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
    iget-boolean v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v1, :cond_1

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    .line 98
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    .line 99
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependencies(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_0

    .line 105
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    goto :goto_0
.end method

.method private resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1
    .param p1, "loader"    # Lcom/badlogic/gdx/assets/loaders/AssetLoader;
    .param p2, "assetDesc"    # Lcom/badlogic/gdx/assets/AssetDescriptor;

    .prologue
    .line 146
    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->file:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/assets/loaders/AssetLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iput-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->file:Lcom/badlogic/gdx/files/FileHandle;

    .line 147
    :cond_0
    iget-object v0, p2, Lcom/badlogic/gdx/assets/AssetDescriptor;->file:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    check-cast v0, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;

    .line 63
    .local v0, "asyncLoader":Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
    iget-boolean v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependenciesLoaded:Z

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v1, v1, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v2, v3}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v3, v3, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    .line 65
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->dependencies:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/assets/AssetManager;->injectDependencies(Ljava/lang/String;Lcom/badlogic/gdx/utils/Array;)V

    .line 75
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    .line 70
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asyncDone:Z

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->manager:Lcom/badlogic/gdx/assets/AssetManager;

    iget-object v2, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v2, v2, Lcom/badlogic/gdx/assets/AssetDescriptor;->fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->resolve(Lcom/badlogic/gdx/assets/loaders/AssetLoader;Lcom/badlogic/gdx/assets/AssetDescriptor;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->assetDesc:Lcom/badlogic/gdx/assets/AssetDescriptor;

    iget-object v4, v4, Lcom/badlogic/gdx/assets/AssetDescriptor;->params:Lcom/badlogic/gdx/assets/AssetLoaderParameters;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_0
.end method

.method public getAsset()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    return-object v0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->ticks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->ticks:I

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->loader:Lcom/badlogic/gdx/assets/loaders/AssetLoader;

    instance-of v0, v0, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->handleSyncLoader()V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/assets/AssetLoadingTask;->asset:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoadingTask;->handleAsyncLoader()V

    goto :goto_0

    .line 91
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
