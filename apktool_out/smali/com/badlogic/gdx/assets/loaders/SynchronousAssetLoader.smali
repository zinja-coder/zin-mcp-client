.class public abstract Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.super Lcom/badlogic/gdx/assets/loaders/AssetLoader;
.source "SynchronousAssetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "P:",
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<TT;>;>",
        "Lcom/badlogic/gdx/assets/loaders/AssetLoader",
        "<TT;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    .line 25
    .local p0, "this":Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;, "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader<TT;TP;>;"
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 26
    return-void
.end method


# virtual methods
.method public abstract load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/assets/AssetManager;",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)TT;"
        }
    .end annotation
.end method
