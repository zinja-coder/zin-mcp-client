.class public Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;
.super Lde/fgerbig/spacepeng/events/EventListener;
.source "InvokeMethodEventListener.java"


# instance fields
.field private args:[Ljava/lang/Object;

.field protected method:Ljava/lang/reflect/Method;

.field protected owner:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lde/fgerbig/spacepeng/events/EventListener;-><init>()V

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->args:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onEvent(Lde/fgerbig/spacepeng/events/Event;)V
    .locals 4
    .param p1, "event"    # Lde/fgerbig/spacepeng/events/Event;

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 44
    iget-object v1, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->owner:Ljava/lang/Object;

    iget-object v3, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->args:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to invoke method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lde/fgerbig/spacepeng/events/Event;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 33
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->method:Ljava/lang/reflect/Method;

    .line 34
    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lde/fgerbig/spacepeng/events/reflection/InvokeMethodEventListener;->owner:Ljava/lang/Object;

    .line 38
    return-void
.end method
