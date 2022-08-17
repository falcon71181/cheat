#include <iostream>
using namespace std;
struct Node {
   int data;
   struct Node *next;
};
struct Node* head = NULL;
void insert(int new_data) {
   struct Node* new_node = (struct Node*) malloc(sizeof(struct Node));
   new_node->data = new_data;
   new_node->next = head;
   head = new_node;
}
void display() {
   struct Node* ptr;
   ptr = head;
   while (ptr != NULL) {
      cout<< ptr->data <<" ";
      ptr = ptr->next;
   }
}
int main() {
   insert(3);
   insert(1);
   insert(7);
   insert(2);
   insert(9);
   cout<<"The linked list is: ";
   display();
   return 0;
}
#include <iostream>

using namespace std;

struct Node {
    int data;
    struct Node * next;
};

void display(struct Node *head){
    struct Node *ptr = head;
    while(ptr!=NULL){
        cout<<ptr->data<<endl;
        ptr=ptr->next;
    }
}

struct Node * insertatfirst(struct Node *head, int data){
    struct Node *ptr = (struct Node *)malloc(sizeof(struct Node));
    ptr->data = data;
    ptr->next = head;
    return ptr;
}

struct Node * insertatindex(struct Node *head, int data, int index){
    int i=0;
    struct Node *ptr = (struct Node *)malloc(sizeof(struct Node));
    struct Node *p =head;
    ptr->data=data;
    while(i<=index-1){
        p=p->next;
        i++;
    }
    ptr->next=p->next;
    p->next=ptr;
    return head;
}

struct Node * insertatlast(struct Node *head, int data){
    struct Node *ptr = (struct Node *)malloc(sizeof(struct Node));
    struct Node *p = head;
    while(p->next!=NULL){
        p = p->next;
    }
    p->next = ptr;
    ptr->data=data;
    ptr->next = NULL;
    return head;
}

struct Node * deleteatfirst(struct Node *head){
    struct Node *p = head;
    head=head->next;
    free(p);
    return head;
}

struct Node * deleteatindex(struct Node *head, int index){
    int i =0;
    struct Node *p = head;
    struct Node *q = head->next;
    while(i>=index-1){
        p=p->next;
        q=q->next;
    }
    p->next=q->next;
    free(q);
    return head;
}

struct Node *deleteatlast(struct Node *head){
    struct Node *p = head;
    struct Node *q = head->next;
    while(q->next!=NULL){
        p=p->next;
        q=q->next;
    }
    p->next=NULL;
    free(q);
    return head;
}

int main()
{
    struct Node *head = (struct Node *)malloc(sizeof(struct Node));
    struct Node *second = (struct Node *)malloc(sizeof(struct Node));
    struct Node *third = (struct Node *)malloc(sizeof(struct Node));
    struct Node *forth = (struct Node *)malloc(sizeof(struct Node));
    
    head->data=11;
    head->next=second;
    
    second->data=22;
    second->next=third;
    
    third->data=33;
    third->next=forth;
    
    forth->data=44;
    forth->next=NULL;
    
    display(head);
    cout<<"---------------------------------------"<<endl;
    //head=insertatfirst(head,99);
    //head=insertatindex(head,99,2);
    //head=insertatlast(head,99);
    //head=deleteatfirst(head);
    //head=deleteatindex(head,2);
    //head=deleteatlast(head);
    display(head);

    return 0;
}


#include <iostream>
using namespace std;
int stack[100], n=100, top=-1;
void push(int val) {
   if(top>=n-1)
   cout<<"Stack Overflow"<<endl;
   else {
      top++;
      stack[top]=val;
   }
}
void pop() {
   if(top<=-1)
   cout<<"Stack Underflow"<<endl;
   else {
      cout<<"The popped element is "<< stack[top] <<endl;
      top--;
   }
}
void display() {
   if(top>=0) {
      cout<<"Stack elements are:";
      for(int i=top; i>=0; i--)
      cout<<stack[i]<<" ";
      cout<<endl;
   } else
   cout<<"Stack is empty";
}
