.class public Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.super Ljava/lang/Object;
.source "AssetLoaderParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/badlogic/gdx/assets/AssetLoaderParameters;, "Lcom/badlogic/gdx/assets/AssetLoaderParameters<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
