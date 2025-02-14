/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode() : val(0), next(nullptr) {}
 *     ListNode(int x) : val(x), next(nullptr) {}
 *     ListNode(int x, ListNode *next) : val(x), next(next) {}
 * };
 */
class Solution {
public:
    ListNode* deleteMiddle(ListNode* head) {
    if (!head || !head->next) {
        return nullptr;  // If there's only one node, return nullptr (empty list)
    }

    // Step 1: Find the length of the linked list
    ListNode* current = head;
    int length = 0;
    while (current) {
        length++;
        current = current->next;
    }

    // Step 2: Find the middle index
    int midIndex = length / 2;

    // Step 3: Traverse the list again to remove the middle node
    current = head;
    for (int i = 0; i < midIndex - 1; ++i) {
        current = current->next;
    }

    // Remove the middle node (current->next is the middle node)
    current->next = current->next->next;

    return head;
}
};
